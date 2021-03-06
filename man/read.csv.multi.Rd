% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.csv.multi.R
\name{read.csv.multi}
\alias{read.csv.multi}
\title{Read Multiple CSV's}
\usage{
read.csv.multi(
  folder,
  header = TRUE,
  sep = ",",
  quote = "\\"",
  dec = ".",
  fill = TRUE,
  trim = TRUE,
  comment.char = "",
  stringsAsFactors = F,
  pattern = NULL,
  dupVar = NULL,
  orderBy = NULL,
  decreasing = T,
  idcol = NULL,
  messageLevel = 0
)
}
\arguments{
\item{folder}{character of length 1 with the address of a folder}

\item{header}{a logical value indicating whether the file contains the names of the variables as its first line. If missing, the value is determined from the file format: header is set to TRUE if and only if the first row contains one fewer field than the number of columns.}

\item{sep}{the field separator character. Values on each line of the file are separated by this character. If sep = "" (the default for read.table) the separator is ‘white space’, that is one or more spaces, tabs, newlines or carriage returns.}

\item{quote}{the set of quoting characters. To disable quoting altogether, use quote = "". Quoting is only considered for columns read as character, which is all of them unless colClasses is specified.}

\item{dec}{the character used in the file for decimal points.}

\item{fill}{logical. If TRUE then in case the rows have unequal length, blank fields are implicitly added. See ‘Details’.}

\item{trim}{logical.  Should excess columns be trimmed (TRUE) or should missing columns be filled with NA's (FALSE)}

\item{comment.char}{a character vector of length one containing a single character or an empty string. Use "" to turn off the interpretation of comments altogether.}

\item{stringsAsFactors}{Should strings be converted to factors?  Default is FALSE.  This should almost never be set to TRUE.}

\item{pattern}{character string containing a regular expression to be matched to file names.  Coerced by as.character to a character string if possible. If a character vector of length 2 or more is supplied, the first element is used with a warning.}

\item{dupVar}{character of length 1 with the name of a variable for which duplicates should be dropped}

\item{orderBy}{character of length 1 with the name of a variable by which to sort the result}

\item{decreasing}{logical, should ordering be done by decreasing values?}

\item{idcol}{Generates an index column. Default (NULL) is not to. If idcol=TRUE then the column is auto named .id. Alternatively the column name can be directly provided, e.g., idcol = "id". If input is a named list, ids are generated using them, else using integer vector from 1 to length of input list.}

\item{messageLevel}{integer, the level of messages that should be printed to the console}
}
\value{
data.table
}
\description{
Read all the csv's in a folder than have filenames matching a given pattern and return a single data.frame
}
