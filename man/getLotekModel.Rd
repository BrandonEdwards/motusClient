% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getLotekModel.R
\name{getLotekModel}
\alias{getLotekModel}
\title{determine the model from a lotek serial number}
\usage{
getLotekModel(serno, extra)
}
\arguments{
\item{serno}{character scalar; receiver serial number, e.g. "Lotek-123"}

\item{extra}{a named character vector of additional .DTA file fields
Currently, this parameter is ignored.}
}
\value{
a character scalar with the receiver model
}
\description{
The serial number determines the receiver model in most cases, but
for a few receivers, additional fields from the .DTA file are needed.
}
\author{
John Brzustowski \email{jbrzusto@REMOVE_THIS_PART_fastmail.fm}
}
