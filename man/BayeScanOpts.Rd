% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BayeScanOpts.R
\name{BayeScanOpts}
\alias{BayeScanOpts}
\title{Create BayeScanOpts object}
\usage{
BayeScanOpts(threads = 1, reps = 3, n = 5000, thin = 10, nbp = 20,
  pilot = 5000, burn = 50000, fdr = 0.1)
}
\arguments{
\item{threads}{\code{numeric} number of threads used for computation. Defaults to 1.}

\item{reps}{\code{numeric} number of replicate runs. Defaults to 3.}

\item{n}{\code{numeric} number of outputted iterations. Defaults to 5000.}

\item{thin}{\code{numeric} thinning interval size. Defaults to 10.}

\item{nbp}{\code{numeric} number of pilot runs. Defaults to 20.}

\item{pilot}{\code{numeric} length of pilot runs. Defaults to 5000.}

\item{burn}{\code{numeric} burn-in length. Defaults to 50000.}

\item{fdr}{\code{numeric} false discovery rate used to classify loic as adaptive. Defaults to 0.1.}
}
\description{
This function creates a new \code{BayeScanOpts} object.
}
\seealso{
\code{\link{BayeScanOpts-class}}.
}

