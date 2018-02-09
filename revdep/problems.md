# aroma.core

Version: 3.1.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# batchtools

Version: 0.9.8

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘Rmpi’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Created registry in '/scratch/hb/RtmpOtioTA/registry197123fa0fd0a' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/hb/RtmpOtioTA/registry1971229fa5022' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/hb/RtmpOtioTA/registry1971261d29e0c' using cluster functions 'Interactive'
    Error in (function (value)  : Ooops.
    ! LaTeX Error: File `framed.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.42 \definecolor
    
    pandoc: Error producing PDF
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

# biotmle

Version: 1.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘Matrix’ ‘SuperLearner’ ‘biotmleData’
      All declared Imports should be used.
    ```

# brms

Version: 2.1.0

## In both

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
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.3Mb
    ```

# drake

Version: 5.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error building target my_target: unusual error
    Quitting from lines 17-25 (example-gsp.Rmd) 
    Error: processing vignette 'example-gsp.Rmd' failed with diagnostics:
    package 'Ecfun' could not be loaded
    Execution halted
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# lidR

Version: 1.4.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘rgl’ ‘rgeos’ ‘gdalUtils’ ‘mapview’ ‘mapedit’
    
    Package suggested but not available for checking: ‘rgdal’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# origami

Version: 0.8.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# QDNAseq

Version: 1.14.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    25324424808508135.336.738865427951052207.660.738865426552919207.650
    FINISHED!
    
    Total time:0minutes
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'QDNAseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# robotstxt

Version: 0.5.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
     google.com                      Quitting from lines 48-51 (using_robotstxt.Rmd) 
    Error: processing vignette 'using_robotstxt.Rmd' failed with diagnostics:
    Could not resolve host: google.com; Name or service not known
    Execution halted
    ```

# sperrorest

Version: 2.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             magrittr, e1071) at testthat/test-sperrorest.R:5
      2: sapply(packages, p_load_single, install = install)
      3: lapply(X = X, FUN = FUN, ...)
      4: FUN(X[[i]], ...)
      5: p_install(package, character.only = TRUE, ...)
      6: try_bioc(package)
      7: source("http://bioconductor.org/biocLite.R")
      8: file(filename, "r", encoding = encoding)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 10 SKIPPED: 33 FAILED: 1
      1. Error: (unknown) (@test-sperrorest.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/inst/figure/resamp-plot.png
    FailedConnectionException2 "raw.githubusercontent.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

