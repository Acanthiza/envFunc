---
output:
  rmarkdown::github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# `envFunc`: an R package of tools to help with other `env`Packages

<!-- badges: start -->
<!-- badges: end -->

The goal of `envFunc` is to store functions that help across the other `env`Packages.

## Installation

`envFunc` is not on [CRAN](https://CRAN.R-project.org).

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Acanthiza/envFunc")
```

Load `envFunc`


```r
library("envFunc")
```

## Add time stamp

`add_time_stamp` adds the creation time of an object as an attribute.


```r

  temp <- cars %>%
    envFunc::add_time_stamp()

  attr(temp, "ctime")
#> [1] "2024-09-09 15:46:42 ACST"
```

## Add a likelihood classification


```r

  x <- tibble::tibble(x = rbeta(10, 1, 1)) %>%
    add_likelihood(x)
#> Joining with `by = join_by(likelihood)`
  
  x
#> # A tibble: 10 × 8
#>         x likelihood             maxVal range         loose very  extreme exceptional
#>     <dbl> <fct>                   <dbl> <fct>         <fct> <fct> <fct>   <fct>      
#>  1 0.225  Unlikely                0.333 (0.1,0.333]   +     +     +       +          
#>  2 0.780  Likely                  0.9   (0.667,0.9]   -     -     -       -          
#>  3 0.458  About as likely as not  0.667 (0.333,0.667] 0     0     0       0          
#>  4 0.0762 Very unlikely           0.1   (0.05,0.1]    +     ++    ++      ++         
#>  5 0.718  Likely                  0.9   (0.667,0.9]   -     -     -       -          
#>  6 0.571  About as likely as not  0.667 (0.333,0.667] 0     0     0       0          
#>  7 0.228  Unlikely                0.333 (0.1,0.333]   +     +     +       +          
#>  8 0.602  About as likely as not  0.667 (0.333,0.667] 0     0     0       0          
#>  9 0.675  Likely                  0.9   (0.667,0.9]   -     -     -       -          
#> 10 0.621  About as likely as not  0.667 (0.333,0.667] 0     0     0       0
```

## What else is in `envFunc`

The following functions and data sets are provided in `envFunc`. See https://acanthiza.github.io/envFunc/ for more examples.



|object                      |class                      |description                                                    |
|:---------------------------|:--------------------------|:--------------------------------------------------------------|
|`envFunc::add_freq_class`   |function                   |Convert percentages to frequency classes                       |
|`envFunc::add_likelihood`   |function                   |Add likelihood based on IPCC thresholds                        |
|`envFunc::add_time_stamp`   |function                   |Add time stamp                                                 |
|`envFunc::clean_dir`        |function                   |Empty a directory                                              |
|`envFunc::filter_test_func` |function                   |Test rows against a function                                   |
|`envFunc::first_up`         |function                   |Change the first letter of a string to capital                 |
|`envFunc::get_or_make`      |function                   |Make an object if it is not available from provided file       |
|`envFunc::git_commit_env`   |function                   |Add, commit and push all current changes to github             |
|`envFunc::last_ctime`       |function                   |Object with the latest code{ctime} attribute                   |
|`envFunc::lulikelihood`     |tbl_df, tbl and data.frame |Dataframe of likelihood thresholds and definitions             |
|`envFunc::lulsa`            |tbl_df, tbl and data.frame |Lookup for Landscapes South Australia regions                  |
|`envFunc::make_aoi`         |function                   |Make a region (area) of interest                               |
|`envFunc::make_epochs`      |function                   |Generate a tibble of epochs.                                   |
|`envFunc::make_metric_df`   |function                   |Use a set of (continuous) columns to choose a good set of rows |
|`envFunc::make_metric_plot` |function                   |Plot the results from code{make_metric_df}                     |
|`envFunc::make_package`     |function                   |Make package workflow                                          |
|`envFunc::make_seasons`     |function                   |Make a list of data frames for months and seasons              |
|`envFunc::mirror_directory` |function                   |Mirror a directory                                             |
|`envFunc::monitor_system`   |function                   |Monitor system resources                                       |
|`envFunc::name_env_out`     |function                   |Use meta data to name or parse output paths                    |
|`envFunc::numbers2words`    |function                   |Convert a numeric to its corresponding english character.      |
|`envFunc::prop_cpu`         |function                   |Proportion of current CPU usage                                |
|`envFunc::prop_mem`         |function                   |Proportion of current memory usage                             |
|`envFunc::quibble`          |function                   |Make a wide, single row, data frame of quantiles (percentiles) |
|`envFunc::run`              |function                   |Run the scrips in a project                                    |
|`envFunc::sp_transform_df`  |function                   |Transform the coordinates in a dataframe                       |
|`envFunc::taxa_label`       |function                   |Create a label for a species                                   |
|`envFunc::timer`            |function                   |A (rough) timer                                                |
|`envFunc::vec_to_sentence`  |function                   |Vector to phrase                                               |






