% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_aoi.R
\name{make_aoi}
\alias{make_aoi}
\title{Make a region (area) of interest}
\usage{
make_aoi(
  layer,
  filt_col = NULL,
  level = NULL,
  simplify = TRUE,
  buffer = FALSE,
  bbox = FALSE,
  out_crs = 4326
)
}
\arguments{
\item{layer}{sf}

\item{filt_col}{Character name of column in \code{layer} to filter on (or \code{NULL}
for no filter)}

\item{level}{Level(s) of \code{filt_col} to filter}

\item{buffer}{Numeric (or \code{FALSE}). Distance to buffer in units of \code{layer}}

\item{bbox}{Logical. Return a bounding box around the result?}

\item{out_crs}{\href{https://epsg.io/}{EPSG} code for coordinate system of
result}
}
\description{
Make a region (area) of interest
}