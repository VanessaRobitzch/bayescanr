% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BayeScanOpts.R
\docType{class}
\name{BayeScanOpts-class}
\alias{BayeScanOpts-class}
\title{BayeScanOpts: An S4 class to represent BayeScan parameters}
\description{
This class stores input parameters for the BayeScan program.
}
\section{Slots}{

\describe{
\item{\code{threads}}{\code{numeric} number of threads used for computation. Defaults to 1.}

\item{\code{reps}}{\code{numeric} number of replicate runs. Defaults to 3.}

\item{\code{n}}{\code{numeric} number of outputted iterations. Defaults to 5000.}

\item{\code{thin}}{\code{numeric} thinning interval size. Defaults to 10.}

\item{\code{nbp}}{\code{numeric} number of pilot runs. Defaults to 20.}

\item{\code{pilot}}{\code{numeric} length of pilot runs. Defaults to 5000.}

\item{\code{burn}}{\code{numeric} burn-in length. Defaults to 50000.}

\item{\code{fdr}}{\code{numeric} false discovery rate used to classify loic as adaptive. Defaults to 0.1.}
}}
\seealso{
\code{\link{BayeScanOpts}}.
}

