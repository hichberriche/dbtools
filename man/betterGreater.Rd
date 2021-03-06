% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/betterGreater.R
\name{betterGreater}
\alias{betterGreater}
\title{Better Greater Than}
\usage{
betterGreater(x, y = NULL)
}
\arguments{
\item{x}{A numeric vector of length 1 or 2}

\item{y}{A numeric vector of length 1 (if /code{x} is atomic) or NULL}
}
\value{
TRUE if the the first value is greater (where any number is considered greater than NA), otherwise FALSE
}
\description{
Test two values to see if one is greater, where NA is equal to NA, and NA < -Inf
}
\note{
Instead of two arguments, this function will also accept a single vector of length 2 and compare the the two elements.
}
\examples{
betterGreater(5, 5)
betterGreater(105, -23.6)
betterGreater(9, NA)
betterGreater(5, 6)
betterGreater(NA, 7)
betterGreater(NA, NA)
betterGreater(-Inf, NA)
betterGreater(NA, -Inf)
betterGreater(15, -Inf)
betterGreater(-Inf, -45)
valuesToCheck = c(10, 13)
betterGreater(x = valuesToCheck)
}
