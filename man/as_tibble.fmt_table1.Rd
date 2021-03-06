% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as_tibble.R
\name{as_tibble.fmt_table1}
\alias{as_tibble.fmt_table1}
\alias{as_data_frame.fmt_table1}
\title{Convert \code{fmt_table1} objects to data frame}
\usage{
\method{as_tibble}{fmt_table1}(x, ...)

as_data_frame.fmt_table1(x, ...)
}
\arguments{
\item{x}{object of class \code{fmt_table1} object from \code{\link{fmt_table1}}
function}

\item{...}{further arguments passed to individual methods.}
}
\description{
Convert \code{fmt_table1} objects to data frame
}
\details{
as_data_frame.fmt_table1 is alias.
}
\examples{
fmt_table1(trial, by = "trt") \%>\%
  as_tibble()
}
\seealso{
\code{\link{fmt_table1}}, \code{\link{as_tibble.fmt_regression}},
\code{\link{as_tibble.fmt_uni_regression}}, \code{\link[tibble]{as_tibble}}
}
