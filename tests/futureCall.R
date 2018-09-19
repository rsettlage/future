source("incl/start.R")

message("*** futureCall() ...")

message("- futureCall() - sequential + lazy ...")

f1 <- future(do.call(rnorm, args = list(n = 100)), lazy = TRUE)
f2 <- futureCall(rnorm, args = list(n = 100), lazy = TRUE)

set.seed(42L)
v0 <- rnorm(n = 100)
str(list(v0 = v0))

set.seed(42L)
v1 <- value(f1)
str(list(v1 = v1))

set.seed(42L)
v2 <- value(f2)
str(list(v2 = v2))

## Because we use lazy futures and set the
## random seed just before they are resolved
stopifnot(all.equal(v1, v0))
stopifnot(all.equal(v1, v2))

message("- futureCall() - sequential + lazy ... DONE")

message("- futureCall() - mix of strategies, cores, lazy and globals ...")

a <- 3
args <- list(x = 42, y = 12)
v0 <- do.call(function(x, y) a * (x - y), args = args)

for (cores in 1:availCores) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)
  strategies <- supportedStrategies(cores)

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    for (lazy in c(FALSE, TRUE)) {
      for (globals in c(FALSE, TRUE)) {
        a <- 3
        args <- list(x = 42, y = 12)
        f <- futureCall(function(x, y) a * (x - y), args = args,
                        globals = globals, lazy = lazy)
        rm(list = c("a", "args"))
        print(f)
        if (inherits(f, "UniprocessFuture") && lazy && globals) {
          stopifnot(all(c("FUN", "args") %in% names(f$globals)))
          if (globals) stopifnot("a" %in% names(f$globals))
        }
        v <- tryCatch({
          value(f)
        }, error = identity)
        stopifnot(!inherits(v, "FutureError"))
        if (!inherits(v, "error")) {
          str(list(globals = globals, lazy = lazy, v0 = v0, v = v))
          stopifnot(all.equal(v, v0))
        } else {
          str(list(globals = globals, lazy = lazy, v0 = v0, v = v))
          stopifnot(!globals)
        }

        rm(list = c("v"))
      }

      a <- 3
      args <- list(x = 42, y = 12)
      f <- futureCall(function(x, y) a * (x - y), args = args,
                      globals = "a", lazy = lazy)
      rm(list = c("a", "args"))
      print(f)
      if (inherits(f, "UniprocessFuture") && lazy && globals) {
        stopifnot(all(c("FUN", "args") %in% names(f$globals)))
        if (globals) stopifnot("a" %in% names(f$globals))
      }
      v1 <- tryCatch({
        value(f)
      }, error = identity)
      stopifnot(!inherits(v1, "FutureError"))
      stopifnot(all.equal(v1, v0))

      args <- list(x = 42, y = 12)
      f <- futureCall(function(x, y) a * (x - y), args = args,
                      globals = list(a = 3), lazy = lazy)
      rm(list = "args")
      print(f)
      v2 <- tryCatch({
        value(f)
      }, error = identity)
      stopifnot(!inherits(v2, "FutureError"))
      str(list(globals = list(a = 3), lazy = lazy, v0 = v0, v2 = v2))
      if (!inherits(v2, "error")) {
        stopifnot(all.equal(v2, v0))
      } else {
        stopifnot(!globals)
      }

      rm(list = c("v2", "v3"))
    }
  }
  message(sprintf("Testing with %d cores ... DONE", cores))
}

message("- futureCall() - mix of strategies, cores, lazy and globals ... DONE")

message("*** futureCall() ... DONE")

source("incl/end.R")
