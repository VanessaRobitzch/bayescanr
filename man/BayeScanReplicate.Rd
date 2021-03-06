% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BayeScanReplicate.R
\name{BayeScanReplicate}
\alias{BayeScanReplicate}
\title{Create BayeScanReplicate object}
\usage{
BayeScanReplicate(fst, mcmc, acceptance.rate, verification)
}
\arguments{
\item{fst}{\code{data.frame} object containing output results ('filename_fst.txt').}

\item{mcmc}{\code{data.frame} object containing Markov chain Monte Carlo information ('filename.sel').}

\item{acceptance.rate}{\code{data.frame} object with information on the evolution of the acceptance rate ('filename_AccRte.txt').}

\item{verification}{\code{character} object with verification diagnostics ('file_Verif.txt').}
}
\value{
\code{\link{BayeScanReplicate}}.
}
\description{
This function creates a new \code{BayeScanReplicate} object.
}
\seealso{
\code{\link{BayeScanReplicate-class}}.
}

