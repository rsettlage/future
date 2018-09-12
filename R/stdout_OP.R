#' Control whether standard output (error) should be captured or not
#'
#' @usage
#' fassignment \%stdout\% capture
#' fassignment \%stderr\% capture
#'
#' @inheritParams multiprocess
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#'
#' @param capture If \code{TRUE}, then the standard output (error) is
#' captured, and re-outputted when the future is resolved.
#' If \code{FALSE}, any output is silenced (by sinking it to the null device).
#' If \code{NA}, output is \emph{not} intercepted.
#'
#' @aliases %stderr%
#' @export
`%stdout%` <- function(fassignment, capture) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'lazy' argument
  args <- getOption("future.disposable", list())
  args["stdout"] <- list(capture)
  options(future.disposable = args)

  eval(fassignment, envir = envir, enclos = baseenv())
}


#' @export
`%stderr%` <- function(fassignment, capture) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'lazy' argument
  args <- getOption("future.disposable", list())
  args["stderr"] <- list(capture)
  options(future.disposable = args)

  eval(fassignment, envir = envir, enclos = baseenv())
}
