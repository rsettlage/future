# aroma.affymetrix

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1028.1Mb
      sub-directories of 1Mb or more:
        R            1024.9Mb
        help            1.1Mb
        testScripts     1.2Mb
    ```

# aroma.core

Version: 3.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit' 'expectile' 'HaarSeg' 'mpcbs'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.6Mb
      sub-directories of 1Mb or more:
        R  1024.5Mb
    ```

# batchtools

Version: 0.9.8

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Created registry in '/home/henrik/tmp/999199.cclc01.som.ucsf.edu/RtmpRy8ipW/registry2a3bc6336dac5' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/home/henrik/tmp/999199.cclc01.som.ucsf.edu/RtmpRy8ipW/registry2a3bc773e8f13' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/home/henrik/tmp/999199.cclc01.som.ucsf.edu/RtmpRy8ipW/registry2a3bc4b4c230a' using cluster functions 'Interactive'
    Error in (function (value)  : Ooops.
    Error producing PDF.
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.5 \usepackage
    
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'doMPI'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'Rmpi'
    ```

# brms

Version: 2.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'brms_multilevel.ltx' failed with diagnostics:
    Running 'texi2dvi' on 'brms_multilevel.ltx' failed.
    LaTeX errors:
    ! LaTeX Error: File `inconsolata.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.47 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.3Mb
    ```

# civis

Version: 1.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1026.3Mb
      sub-directories of 1Mb or more:
        R     1024.4Mb
        help     1.4Mb
    ```

# drtmle

Version: 1.0.2

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      == testthat results  ===========================================================
      OK: 103 SKIPPED: 0 FAILED: 11
      1. Error: ci.drtmle works as expected (@test-confint.R#13) 
      2. Error: drtmle executes as expected with cvtmle and stratify = TRUE (@test-cvtmle.R#16) 
      3. Error: drtmle executes as expected with cv and stratify = FALSE (@test-cvtmle.R#176) 
      4. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle-missingAY.R#23) 
      5. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle-missingAY.R#188) 
      6. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle.R#48) 
      7. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle.R#203) 
      8. Error: drtmle executes as expected when only one value of gn (@test-edge.R#16) 
      9. Error: drtmle executes when glm and SL are specified (@test-edge.R#49) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    drtmle: TMLE with doubly robust inference
    Version: 1.0.2
    Quitting from lines 443-453 (using_drtmle.Rmd) 
    Error: processing vignette 'using_drtmle.Rmd' failed with diagnostics:
    wrong sign in 'by' argument
    Execution halted
    ```

## In both

*   checking examples ... WARNING
    ```
    ...
    Super Learner
    Version: 2.0-22
    Package created on 2017-07-18
    
    > # simulate data
    > set.seed(123456)
    > n <- 100
    > W <- data.frame(W1 = runif(n), W2 = rnorm(n))
    > A <- rbinom(n,1,plogis(W$W1 - W$W2))
    > Y <- rbinom(n, 1, plogis(W$W1*W$W2*A))
    > # fit drtmle with maxIter = 1 to run fast
    > fit1 <- drtmle(W = W, A = A, Y = Y, a_0 = c(1,0),
    +             family=binomial(),
    +             stratify=FALSE,
    +             SL_Q=c("SL.glm","SL.mean"),
    +             SL_g=c("SL.glm","SL.mean"),
    +             SL_Qr="SL.npreg",
    +             SL_gr="SL.npreg", maxIter = 1)
    Error in seq.default(1, length(gnValid), 2) : wrong sign in 'by' argument
    Calls: drtmle -> do.call -> seq -> seq.default
    Execution halted
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'desc'
      All declared Imports should be used.
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1027.0Mb
      sub-directories of 1Mb or more:
        doc          1024.3Mb
        dockerfiles     2.3Mb
    ```

# kernelboot

Version: 0.1.3

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# lidR

Version: 1.4.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      'rgeos' 'gdalUtils' 'mapview' 'mapedit'
    
    Package suggested but not available for checking: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'Matrix' 'shiny'
      All declared Imports should be used.
    ```

# origami

Version: 0.8.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'methods'
      All declared Imports should be used.
    ```

# penaltyLearning

Version: 2017.12.08

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1025.9Mb
      sub-directories of 1Mb or more:
        data-ex  1024.0Mb
    ```

# QDNAseq

Version: 1.12.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'exportVCF'
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# sperrorest

Version: 2.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/inst/figure/resamp-plot.png
    HttpExceptionRequest Request {
      host                 = "raw.githubusercontent.com"
      port                 = 443
      secure               = True
      requestHeaders       = []
      path                 = "/pat-s/sperrorest/master/inst/figure/resamp-plot.png"
      queryString          = ""
      method               = "GET"
      proxy                = Nothing
      rawBody              = False
      redirectCount        = 10
      responseTimeout      = ResponseTimeoutDefault
      requestVersion       = HTTP/1.1
    }
     (InternalException (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))))
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 61
    Execution halted
    ```

