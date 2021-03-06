% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CNMS.MakeBulkUpload.R
\name{CNMS.MakeBulkUpload}
\alias{CNMS.MakeBulkUpload}
\title{Make Bulk Upload for NYSSIS/Child Nutrition Management System}
\usage{
CNMS.MakeBulkUpload(
  xlsxFile,
  BedsCode = "010100860907",
  singleGender = NULL,
  uploadfilename = "bulkupload.txt",
  messageLevel = 0
)
}
\arguments{
\item{xlsxFile}{An xlsx file, Workbook object, or URL to an xlsx file}

\item{BedsCode}{The 12 digit BEDS code for the LEA (Local Education Agency, usually a district)}

\item{singleGender}{Indicator of single gender LEA.  Acceptable values are "M", "F", and NULL}

\item{uploadfilename}{Name of the output file.  Should end in ".txt".  Defaults to "bulkupload.txt".}

\item{messageLevel}{Numeric of length 1 indicating the level of messages to print}
}
\value{
Nothing is returned
}
\description{
Based on an export from the Student Management System, generate a text file that can be uploaded to NYSSIS (using the CN role) to generate matches to SNAP and Medicaid records for direct certification of free lunch eligibility
}
