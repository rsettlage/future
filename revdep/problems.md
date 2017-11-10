# aroma.affymetrix

Version: 3.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# aroma.core

Version: 3.1.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# biotmle

Version: 1.3.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nima Hejazi <nhejazi@berkeley.edu>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Nima Hejazi [aut, cre, cph], Alan Hubbard [aut], Weixin Cai [ctb]’
      Authors@R: ‘Nima Hejazi [aut, cre, cph] (0000-0002-7127-2789), Alan Hubbard [aut] (0000-0002-3769-0127), Weixin Cai [ctb] (0000-0003-2680-3066)’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘Matrix’ ‘SuperLearner’ ‘biotmleData’
      All declared Imports should be used.
    ```

# brms

Version: 1.10.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             19.0926350150152, 18.8945129699237, 18.0108393528174, 19.7701316692212, 18.8782005493563, 
             19.7940091524462, 19.8237620934549, 18.3328590868642, 21.1433629234624, 21.1875208893366, 
             19.3973597490138, 20.8449225368382, 20.372121569615, 19.2342599702768, 19.7081018507341, 
             22.137804868225, 18.2955280576296, 21.0263319602962, 20.7033307617188, 19.3766650536768, 
             17.2639083603058, 18.8215974211102, 16.8439392831744, 18.3075160998575, 18.4999237944554, 
             20.0053300186512), .Dim = c(10L, 236L)))
      11: suggested_package("arm")
      12: stop("Please install the ", pkg, " package to use this function.", call. = FALSE)
      
      testthat results ================================================================
      OK: 1098 SKIPPED: 1 FAILED: 1
      1. Error: all S3 methods have reasonable ouputs (@tests.brmsfit-methods.R#411) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://travis-ci.org/paul-buerkner/brms.svg?branch=master
    FailedConnectionException2 "travis-ci.org" 443 True getAddrInfo: does not exist (Name or service not known)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: Rcpp
    Loading required package: ggplot2
    Loading 'brms' package (version 1.10.2). Useful instructions
    can be found by typing help('brms'). A more detailed introduction
    to the package is available through vignette('brms_overview').
    Run theme_set(theme_default()) to use the default bayesplot theme.
    Compiling the C++ model
    Start sampling
    Warning in file(file, "rt") :
      URL 'http://stats.idre.ucla.edu/stat/data/fish.csv': status was 'Couldn't resolve host name'
    Quitting from lines 85-87 (brms_distreg.Rmd) 
    Error: processing vignette 'brms_distreg.Rmd' failed with diagnostics:
    cannot open the connection to 'http://stats.idre.ucla.edu/stat/data/fish.csv'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.4Mb
    ```

# civis

Version: 1.1.0

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://travis-ci.org/civisanalytics/civis-r.svg?branch=master
    FailedConnectionException2 "travis-ci.org" 443 True getAddrInfo: does not exist (Name or service not known)
    ```

# fiery

Version: 1.1.0

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://travis-ci.org/thomasp85/fiery.svg?branch=master
    FailedConnectionException2 "travis-ci.org" 443 True getAddrInfo: does not exist (Name or service not known)
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# future.BatchJobs

Version: 0.15.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# future.batchtools

Version: 0.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 5 SKIPPED: 0 FAILED: 46
      1. Error: We can see a project resource (@test_aa_auth.R#16) 
      2. Error: We can set auto project (@test_aa_auth.R#26) 
      3. Error: We can get auto project (@test_aa_auth.R#37) 
      4. Error: We can list networks (@test_aa_auth.R#70) 
      5. Error: We can get a network (@test_aa_auth.R#79) 
      6. Error: We can make a container VM (@test_bb_create_vm.R#7) 
      7. Error: We can make a VM with metadata (@test_bb_create_vm.R#24) 
      8. Error: We can make a template VM (@test_bb_create_vm.R#41) 
      9. Error: We can make a VM with custom disk size (@test_bb_create_vm.R#57) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Mark Edmondson <r@sunholo.com>’
    
    This build time stamp is over a month old.
    ```

# kernelboot

Version: 0.1.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Tymoteusz Wolodzko <twolodzko+kernelboot@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# methyvim

Version: 1.0.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nima Hejazi <nhejazi@berkeley.edu>’
    
    Uses the superseded package: ‘snow’
    
    Found the following (possibly) invalid URLs:
      URL: https://cran.r-project.org/web/packages/drtmle/index.html
        From: inst/doc/using_methyvim.html
        CRAN URL not in canonical form
      URL: https://cran.r-project.org/web/packages/randomForest/index.html
        From: inst/doc/using_methyvim.html
        CRAN URL not in canonical form
      The canonical URL of the CRAN page for a package is 
        https://CRAN.R-project.org/package=pkgname
    
    The Description field should not start with the package name,
      'This package' or similar.
    ```

# multiApply

Version: 0.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Alasdair Hunter <alasdair.hunter@bsc.es>’
    
    This build time stamp is over a month old.
    ```

# origami

Version: 0.8.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jeremy Coyle <jeremyrcoyle@gmail.com>’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# pbmcapply

Version: 1.2.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kevin kuang <kvn.kuang@mail.utoronto.ca>’
    
    This build time stamp is over a month old.
    ```

# penaltyLearning

Version: 2017.07.11

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Toby Dylan Hocking <toby.hocking@r-project.org>’
    
    Version contains leading zeroes (2017.07.11)
    Version contains large components (2017.07.11)
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Warning: `panel.margin` is deprecated. Please use `panel.spacing` property instead
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Definition.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `fullpage.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.4 \usepackage
                   {verbatim}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
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

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Daoud Sie <d.sie@vumc.nl>’
    
    The Title field should be in title case, current version then in title case:
    ‘Quantitative DNA sequencing for chromosomal aberrations’
    ‘Quantitative DNA Sequencing for Chromosomal Aberrations’
    
    The Date field is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    25313614806329135.236.738865427951038207.660.738865426558655207.650.1
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

# R.filesets

Version: 2.11.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# sperrorest

Version: 2.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Thu Nov  9 10:27:03 2017 Repetition 2 - Fold 2 - permutation-count: 1 
      Installing package into '/netapp/home/hb/repositories/future/revdep/checks/sperrorest/new/sperrorest.Rcheck'
      (as 'lib' is unspecified)
      Warning: unable to access index for repository http://cran.rstudio.com/src/contrib:
        cannot open URL 'http://cran.rstudio.com/src/contrib/PACKAGES'
      Error in file(filename, "r", encoding = encoding) : 
        cannot open the connection to 'http://bioconductor.org/biocLite.R'
      Calls: test_check ... lapply -> FUN -> p_install -> try_bioc -> source -> file
      In addition: Warning messages:
      1: package 'e1071' is not available (for R version 3.4.2) 
      2: In file(filename, "r", encoding = encoding) :
        URL 'http://bioconductor.org/biocLite.R': status was 'Couldn't resolve host name'
      testthat results ================================================================
      OK: 51 SKIPPED: 4 FAILED: 0
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.repostatus.org/badges/latest/inactive.svg
    FailedConnectionException2 "www.repostatus.org" 80 False getAddrInfo: does not exist (Name or service not known)
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

# startR

Version: 0.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nicolau Manubens <nicolau.manubens@bsc.es>’
    
    This build time stamp is over a month old.
    ```

