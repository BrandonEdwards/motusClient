% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRuns.R
\name{getRuns}
\alias{getRuns}
\title{Returns a dataframe containing the runID and motusTagID, ambigID and timestamp range
of runs, filtered by optional parameters. The match.partial parameter (default = TRUE) determines how  
timestamp filtering works. When match.partial is FALSE, runID's are only included when both 
tsBegin and tsEnd falls between ts.min and ts.max (only includes runs when they entirely contained 
in the specified range). When match.partial is TRUE, runID's are returned whenever the run
partially matches the specified period.}
\usage{
getRuns(src, ts.min = NA, ts.max = NA, match.partial = TRUE,
  motusTagID = c(), ambigID = c())
}
\arguments{
\item{src}{dplyr sqlite src, as returned by \code{dplyr::src_sqlite()}}

\item{ts.min}{mininum timestamp used to filter the dataframe, Default: NA}

\item{ts.max}{maximum timestamp used to filter the dataframe, Default: NA}

\item{match.partial}{whether runs that partially overlap the specified ts range are included, Default: TRUE}

\item{motusTagID}{vector of Motus tag ID's used to filter the resulting dataframe, Default: c()}

\item{ambigID}{vector of ambig ID's used to filter the resulting dataframe, Default: c()}
}
\value{
a dataframe containing the runID, the motusTagID and the ambigID (if applicable) of runs
}
\description{
Returns a dataframe containing the runID and motusTagID, ambigID and timestamp range
of runs, filtered by optional parameters. The match.partial parameter (default = TRUE) determines how  
timestamp filtering works. When match.partial is FALSE, runID's are only included when both 
tsBegin and tsEnd falls between ts.min and ts.max (only includes runs when they entirely contained 
in the specified range). When match.partial is TRUE, runID's are returned whenever the run
partially matches the specified period.
}
\author{
Denis Lepage, Bird Studies Canada
}
