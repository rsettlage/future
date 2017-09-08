# aroma.affymetrix

Version: 3.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1028.1Mb
      sub-directories of 1Mb or more:
        R            1024.9Mb
        help            1.1Mb
        testScripts     1.2Mb
    ```

# aroma.core

Version: 3.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD' 'sfit' 'expectile' 'HaarSeg' 'mpcbs'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1025.6Mb
      sub-directories of 1Mb or more:
        R  1024.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'GLAD'
    ```

# brms

Version: 1.9.0

## In both

*   R CMD check timed out
    

*   checking top-level files ... WARNING
    ```
    Conversion of 'README.md' failed:
    pandoc: Could not fetch https://travis-ci.org/paul-buerkner/brms.svg?branch=master
    TlsExceptionHostPort (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))) "travis-ci.org" 443
    ```

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Paul-Christian B<U+00FC>rkner <paul.buerkner@gmail.com>'
    
    The Date field is over a month old.
    ```

# doFuture

Version: 0.5.0

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/doRNG,dopar.R' failed.
    Last 13 lines of output:
      - args: function (expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, persistent = FALSE, workers = availableWorkers(), user = NULL, revtunnel = TRUE, homogeneous = TRUE, gc = FALSE, earlySignal = FALSE, label = NULL, ...)
      - tweaked: FALSE
      - call: plan(strategy)
      Workers: [n = 2] 'localhost', 'localhost'
      Base port: 11622
      Creating node 1 of 2 ...
      - setting up node
      Starting worker #1 on 'localhost': '/home/shared/cbc/software_cbc/R/R-3.4.1-20170630/lib64/R/bin/Rscript' --default-packages=datasets,utils,grDevices,graphics,stats,methods -e 'parallel:::.slaveRSOCK()' MASTER=localhost PORT=11622 OUT=/dev/null TIMEOUT=2592000 XDR=TRUE
      Waiting for worker #1 on 'localhost' to connect back
      Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
        port 11622 cannot be opened
      Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
        cannot open the connection
      Calls: plan ... makeClusterPSOCK -> makeNode -> <Anonymous> -> socketConnection
      Execution halted
    ```

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    This build time stamp is over a month old.
    ```

# future.BatchJobs

Version: 0.14.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    This build time stamp is over a month old.
    ```

# future.batchtools

Version: 0.5.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    This build time stamp is over a month old.
    ```

# googleComputeEngineR

Version: 0.1.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 53 SKIPPED: 0 FAILED: 39
      1. Error: We can login (@test_aa_auth.R#7) 
      2. Error: We can see a project resource (@test_aa_auth.R#16) 
      3. Error: We can list networks (@test_aa_auth.R#70) 
      4. Error: We can get a network (@test_aa_auth.R#79) 
      5. Error: We can make a container VM (@test_bb_create_vm.R#5) 
      6. Error: We can make a VM with metadata (@test_bb_create_vm.R#23) 
      7. Error: We can make a template VM (@test_bb_create_vm.R#41) 
      8. Error: We can run SSH on an instance (@test_bb_create_vm.R#62) 
      9. Error: We can check SSH settings (@test_bb_create_vm.R#77) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Mark Edmondson <r@sunholo.com>'
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.5Mb
      sub-directories of 1Mb or more:
        doc  1024.1Mb
    ```

# kernelboot

Version: 0.1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Tymoteusz Wolodzko <twolodzko+kernelboot@gmail.com>'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# multiApply

Version: 0.0.1

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Alasdair Hunter <alasdair.hunter@bsc.es>'
    
    This build time stamp is over a month old.
    ```

# origami

Version: 0.8.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Jeremy Coyle <jeremyrcoyle@gmail.com>'
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'methods'
      All declared Imports should be used.
    ```

# penaltyLearning

Version: 2017.07.11

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Toby Dylan Hocking <toby.hocking@r-project.org>'
    
    Version contains leading zeroes (2017.07.11)
    Version contains large components (2017.07.11)
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.8Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Daoud Sie <d.sie@vumc.nl>'
    
    The Title field should be in title case, current version then in title case:
    'Quantitative DNA sequencing for chromosomal aberrations'
    'Quantitative DNA Sequencing for Chromosomal Aberrations'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# R.filesets

Version: 2.11.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Henrik Bengtsson <henrikb@braju.com>'
    
    This build time stamp is over a month old.
    ```

# sperrorest

Version: 2.0.1

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of 'README.md' failed:
    pandoc: Could not fetch https://zenodo.org/badge/69967610.svg
    TlsExceptionHostPort (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))) "zenodo.org" 443
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/inst/figure/resamp-plot.png
    TlsExceptionHostPort (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))) "raw.githubusercontent.com" 443
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Alexander Brenning <alexander.brenning@uni-jena.de>'
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# startR

Version: 0.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: 'Nicolau Manubens <nicolau.manubens@bsc.es>'
    
    This build time stamp is over a month old.
    ```

