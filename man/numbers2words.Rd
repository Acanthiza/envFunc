% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{numbers2words}
\alias{numbers2words}
\title{Convert a numeric to its corresponding english character.}
\usage{
numbers2words(x)
}
\arguments{
\item{x}{Numeric}
}
\value{
Character. 'spelled out' (in english) x.
}
\description{
Edited from the \href{https://github.com/ateucher/useful_code/blob/master/R/numbers2words.r}{Github}
file by \href{https://github.com/ateucher}{ateucher}.
}
\examples{
x <- 10
numbers2words(10)

x <- c(x, 0, 20)
numbers2words(x)

x <- c(x, sample(1:10000,1))
numbers2words(x)
}
