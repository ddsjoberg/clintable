% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inline_text.R
\name{inline_text.fmt_table1}
\alias{inline_text.fmt_table1}
\title{Report statistics from \code{fmt_table1} inline in an Rmarkdown document}
\usage{
\method{inline_text}{fmt_table1}(x, cell, sep = ":", pvalue = FALSE,
  p_pvalue = FALSE, overall = FALSE, ...)
}
\arguments{
\item{x}{object of class \code{fmt_table1} object from \code{\link{fmt_table1}} function}

\item{cell}{identifier for which cell to return from the \code{fmt_table1} object}

\item{sep}{a character string to separate the terms (e.g. variable name, )}

\item{pvalue}{logical indicator to return p-value.  Default is \code{FALSE}}

\item{p_pvalue}{logical indicator to return p-value with prepended p
(e.g. p=0.3 and p<0.001).  Default is \code{FALSE}}

\item{overall}{logical indicator to return overall summary
statistic.  Default is \code{FALSE}.  This only applies when the \code{fmt_table1} object contains
both summary statistics by some variable AND overall summary statistics.}

\item{...}{further arguments passed from generic \code{inline_text()}}
}
\value{
Formatted descriptive statistics from a \code{fmt_table1} object
}
\description{
Report statistics from \code{fmt_table1} inline in an Rmarkdown document
}
\examples{
t1 <- fmt_table1(mtcars)
t2 <- fmt_table1(mtcars, by = "am")
t3 <- fmt_table1(mtcars, by = "am") \%>\% add_overall()

inline_text(t1, "mpg") # mpg
inline_text(t1, "cyl:4") # cyl=4
inline_text(t2, "mpg:1") # mpg with am=1
inline_text(t2, "cyl:4:1") # cyl=4 with am=1
inline_text(t3, "mpg", overall = TRUE) # overall mpg summary
}
