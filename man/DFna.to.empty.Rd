% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/natoempty.R
\name{DFna.to.empty}
\alias{DFna.to.empty}
\title{Data Frame NA to Empty}
\usage{
DFna.to.empty(x, coltypes = "all")
}
\arguments{
\item{x}{A data.frame}

\item{coltypes}{Character vector with the types of columns to affect.  Default is "all", which includes logical, integer, double, complex, character, raw, and factor.}
}
\value{
A data.frame with the same dimensions and names as \code{x}.  Columns whose types were specified in coltypes will be converted to character (except factors, which stay factor).
}
\description{
Converts all NA's certain columns of a data.frame to empty values
}
\examples{
V1 = c(LETTERS[1:8], NA, NA)
V2 = c(NA, 1:8, NA)
V3 = factor(c(rep(c("A","B"), times = 4),NA, NA))
ex1 = data.frame(V1 = V1, V2 = V2, V3 = V3, stringsAsFactors = F)
DFna.to.empty(ex1)
DFna.to.empty(ex1, coltypes = "character")
DFna.to.empty(ex1, coltypes = c("character", "factor"))
DFna.to.empty(ex1, coltypes = c("character", "integer"))
}
