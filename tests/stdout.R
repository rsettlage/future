source("incl/start.R")

message("*** Standard output ...")

expr <- quote({
  print(1:50)
  str(1:50)
  cat(letters, sep = "-")
  cat(1:6, collapse = "\n")
  write.table(datasets::iris[1:10,], sep = "\t")
  message("hello world!")
  message(paste(capture.output(print(1:50)), collapse = "\n"))
  42L
})

truth_stdout_rows <- utils::capture.output(v <- eval(expr))
truth_stdout <- paste0(paste(truth_stdout_rows, collapse = "\n"), "\n")
print(truth_stdout)

truth_stderr_rows <- utils::capture.output(v <- eval(expr), type = "message")
truth_stderr <- paste0(paste(truth_stderr_rows, collapse = "\n"), "\n")
print(truth_stderr)

cores <- min(2L, availCores)
options(mc.cores = cores)
message(sprintf("Testing with %d cores", cores))

for (strategy in supportedStrategies(cores)) {
  message(sprintf("%s ...", strategy))
  plan(strategy)

  for (stdout in c(TRUE, FALSE, NA)) {
    message(sprintf("- stdout = %s", stdout))

    for (stderr in c(TRUE, FALSE, NA)) {
      message(sprintf("- stderr = %s", stderr))

      f <- future(expr, substitute = FALSE, stdout = stdout, stderr = stderr)
      r <- result(f)
      str(r)
      stopifnot(value(f) == 42L)
      if (is.na(stdout)) {
        stopifnot(!"stdout" %in% names(r))
      } else if (stdout) {
        print(r)
        stopifnot(identical(r$stdout, truth_stdout))
      } else {
        stopifnot(is.null(r$stdout))
      }
      if (is.na(stderr)) {
        stopifnot(!"stderr" %in% names(r))
      } else if (stderr) {
        print(r)
        stopifnot(identical(r$stderr, truth_stderr))
      } else {
        stopifnot(is.null(r$stderr))
      }
  
      v %<-% {
        print(1:50)
        str(1:50)
        cat(letters, sep = "-")
        cat(1:6, collapse = "\n")
        write.table(datasets::iris[1:10,], sep = "\t")
        message("hello world!")
        message(paste(capture.output(print(1:50)), collapse = "\n"))
        42L
      } %stdout% stdout %stderr% stderr
      out <- utils::capture.output(y <- v)
      stopifnot(y == 42L)
      if (is.na(stdout) || !stdout) {
        stopifnot(out == "")
      } else {
        print(out)
        stopifnot(identical(out, truth_stdout_rows))
      }
    } ## for (stderr ...)
  } ## for (stdout ...)

  message(sprintf("%s ... done", strategy))
} ## for (strategy ...)

message("*** Standard output ... DONE")

source("incl/end.R")
