#' An uniprocess future is a future whose value will be resolved synchronously in the current process
#'
#' @inheritParams Future-class
#' 
#' @param \dots Additional named elements passed to \code{\link{Future}()}.
#'
#' @return An object of class \code{UniprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "uniprocess future", see functions
#' \code{\link{uniprocess}()}.
#'
#' @export
#' @name UniprocessFuture-class
#' @keywords internal
UniprocessFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, globals = TRUE, packages = NULL, lazy = FALSE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  if (lazy && !local && (!is.logical(globals) || globals)) {
    stop("Non-supported use of lazy uniprocess futures: Whenever argument 'local' is FALSE, then argument 'globals' must also be FALSE. Lazy uniprocess future evaluation in the calling environment (local = FALSE) can only be done if global objects are resolved at the same time.")
  }

  ## Global objects?
  gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = globals)
  globals <- gp$globals

  ## Record packages?
  if (length(packages) > 0 || (length(gp$packages) > 0 && lazy)) {
    packages <- unique(c(gp$packages, packages))
  }
  
  gp <- NULL
 
  f <- Future(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, asynchronous = FALSE, local = local, globals = globals, packages = packages, version = "1.8", ...)
  f$.callResult <- TRUE
  structure(f, class = c("UniprocessFuture", class(f)))
}


#' @importFrom utils capture.output ls.str
#' @export
run.UniprocessFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != 'created') {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    stop(FutureError(sprintf("A future ('%s') can only be launched once.", label), future = future))
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  expr <- getExpression(future)
  envir <- future$envir

  ## Make sure that all required packages are attached
  ## Note, this needs to be done prior to overriding the global environment
  ## in order to make sure the new "global" environment points to the same
  ## parent.
  pkgs <- future$packages
  if (length(pkgs) > 0) {
    missing <- setdiff(pkgs, search())
    if (debug) mdebug("Attaching missing required packages: [n = %d] %s", length(pkgs), paste(sQuote(pkgs), collapse = ", "))
    for (pkg in pkgs) {
      require(pkg, character.only = TRUE) || stop("Failed to attach package: ", sQuote(pkg))
    }
  }
  
  ## Assign globals to separate "globals" enclosure environment?
  globals <- future$globals
  if (future$local && length(globals) > 0) {
    if (debug) mdebug("Updating the global environment ...")
    ## Create an new "global" environment containing all the globals
    genv <- as.environment(globals)
    parent.env(genv) <- parent.env(globalenv())
    if (debug) {
      mdebug("Created a new global environment holding the globals:")
      mdebug("  %s\n", capture.output(ls.str(genv)))
    }

    ## Update any references to the global environments
    if (debug) mdebug("Updating references to the global environments:")
    count <- 0L
    for (name in names(genv)) {
      fcn <- tryCatch(envir[[name]], error = identity)
      if (!is.function(fcn)) {
        if (debug) mdebug("- Skipping %s %s", typeof(fcn), sQuote(name))
        next
      }
      if (!identical(environment(fcn), globalenv())) next
      environment(fcn) <- genv
      genv[[name]] <- fcn
      if (debug) {
        count <- count + 1L
        mdebug("- Updated %s: %s", typeof(fcn), sQuote(name))
      }
    }
    if (debug) mdebug("- Number of objects updated: %d", count)

    if (debug) mdebug("Updating references to the global environments in calling environment (unless it's in the global environment because we don't want to mess with the global environment):")
    if (!identical(envir, globalenv())) {
      count <- 0L
      for (name in names(envir)) {
        fcn <- tryCatch(envir[[name]], error = identity)
        fcn <- tryCatch(force(fcn), error = identity)
        if (!is.function(fcn)) next
        if (!identical(environment(fcn), globalenv())) next
        environment(fcn) <- genv
        envir[[name]] <- fcn
        if (debug) {
          count <- count + 1L
          mdebug("- Updated %s: %s", typeof(fcn), sQuote(name))
        }
      }
      if (debug) mdebug("- Number of objects updated: %d", count)
    }

    ## Update the global environment in the environment stack
    if (debug) mdebug("Updating the global environment in the environment stack")
    env <- envir
    updated <- FALSE
    if (identical(env, globalenv())) {
      envir <- genv
      updated <- TRUE
    } else {
      while (!identical(env, emptyenv())) {
        penv <- parent.env(env)
        if (identical(penv, globalenv())) {
          parent.env(env) <- genv
          ## FIXME: Do we really need to reset? /HB 2018-09-16
          on.exit(parent.env(env) <- penv, add = TRUE)
          updated <- TRUE
          break
        }
        env <- penv
      }
    }
    if (debug) mdebug(" - New \"global\" environment set: %s", updated)

    ## AD HOC: This uses the existing global environment as a fallback
    ## after the above temporary "global" environment.  This is done
    ## because it is expensive to search for all functions that need
    ## to be updated.
    ## FIXME: This is "leaky" and should probably be fixed. /HB 2018-09-16
    if (isTRUE(getOption("future.uniprocess.leaky", TRUE))) {
      parent.env(genv) <- globalenv()
    }
    
    if (debug) mdebug("Updating the global environment ... done")
  }

  ## Run future
  future$state <- 'running'
  future$result <- eval(expr, envir = envir, enclos = baseenv())
  future$state <- 'finished'

  if (debug) mdebug("%s started (and completed)", class(future)[1])
  
  ## Signal conditions early, iff specified for the given future
  signalEarly(future, collect = FALSE)
  
  invisible(future)
}


#' @export
result.UniprocessFuture <- function(future, ...) {
  ## Has the result already been collected?
  result <- future$result
  if (!is.null(result)) {
    if (inherits(result, "FutureError")) stop(result)
    return(result)
  }
  
  if (future$state == "created") {
    run(future)
  }

  result <- future$result
  if (inherits(result, "FutureResult")) return(result)

  ex <- UnexpectedFutureResultError(future)
  future$result <- ex
  stop(ex)
}


#' @export
resolved.UniprocessFuture <- function(x, ...) {
  if (x$lazy) {
    ## resolved() for lazy uniprocess futures must force result()
    ## such that the future gets resolved.  The reason for this
    ## is so that polling is always possible, e.g.
    ## while(!resolved(f)) Sys.sleep(5);
    result(x)
  }
  NextMethod()
}


#' @rdname UniprocessFuture-class
#' @export
SequentialFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, lazy = FALSE, globals = TRUE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, globals = globals, local = local, ...)
  structure(f, class = c("SequentialFuture", class(f)))
}
