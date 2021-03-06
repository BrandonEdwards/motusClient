% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRunsFilters.R
\name{getRunsFilters}
\alias{getRunsFilters}
\title{Returns a dataframe of the runFilters records matching a filter name (and optionally a project ID) stored 
in the local database.}
\usage{
getRunsFilters(src, filterName, motusProjID = NA)
}
\arguments{
\item{src}{dplyr sqlite src, as returned by \code{dplyr::src_sqlite()}}

\item{filterName}{unique name given to the filter}

\item{motusProjID}{optional project ID attached to the filter in order to share with other users of the 
same project.}
}
\value{
a dplyr sqlite object
}
\description{
Returns a dataframe of the runFilters records matching a filter name (and optionally a project ID) stored 
in the local database.
}
\author{
Denis Lepage, Bird Studies Canada
}
