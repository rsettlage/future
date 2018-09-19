source("incl/start.R")
library("listenv")

for (cores in 1:availCores) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)

  message("*** Global argument '...' ...")

  sum_fcns <- list()

  sum_fcns$A <- function(x, ...) {
    message("Arguments '...' exists: ", exists("...", inherits = TRUE))
    y %<-% { sum(x, ...) }
    y
  }


  sum_fcns$B <- function(x, ...) {
    sumt <- function(x) {
      message("Arguments '...' exists: ", exists("...", inherits = TRUE))
      y %<-% { sum(x, ...) }
      y
    }
    sumt(x)
  }

  sum_fcns$C <- function(x, y) {
    message("Arguments '...' exists: ", exists("...", inherits = TRUE))
    z %<-% { sum(x, y) }
    z
  }

  sum_fcns$D <- function(x, y) {
    message("Arguments '...' exists: ", exists("...", inherits = TRUE))
    z %<-% { sum(x, y, ...) }
    z
  }

  ## ILLEGAL USAGE:
  ## Here there is a global variable 'y', but also a local *promise* 'y',
  ## which will need to "Error: promise already under evaluation: 
  ## recursive default argument reference or earlier problems?"
  ## The same happens when we use, e.g. delayedAssign("y", { y + 1 })
  sum_fcns$E <- function(x, y) {
    message("Global has the same name as the promise created")
    y %<-% { sum(x, y) }
    y
  }


  for (strategy in supportedStrategies(cores)) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy, substitute = FALSE)

    for (name in names(sum_fcns)) {
      message(sprintf("** Sum function '%s' with plan('%s') ...", name, strategy))
      sum_fcn <- sum_fcns[[name]]
      print(sum_fcn)
      y <- try(sum_fcn(1:2, 3))
      print(y)
      if (name %in% c("D")) {
        stopifnot(inherits(y, "try-error"))
      } else if (name %in% c("E")) {
        stopifnot(inherits(y, "try-error") || y == 6)
      } else {
        stopifnot(y == 6)
      }
    }
  }

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Global argument '...' ... DONE")

source("incl/end.R")
