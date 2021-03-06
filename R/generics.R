#' @include bayescanr-internal.R misc.R
NULL

#' Number of loci
#'
#' This function returns the number of loci in a \code{BayeScan} object.
#'
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @return \code{integer}.
#' @export
n.loci <- function(x) UseMethod('n.loci')

#' Number of populations
#'
#' This function returns the number of populations in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @return \code{integer}.
#' @export
n.pop <- function(x) UseMethod('n.pop')

#' Number of samples
#'
#' This function returns the number of samples in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @return \code{integer}.
#' @export
n.samples <- function(x) UseMethod('n.samples')

#' Names of populations
#'
#' This function returns the unique population names in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @return \code{character}.
#' @export
pop.names <- function(x) UseMethod('pop.names')

#' Name of sample populations
#'
#' This function returns the population name that each sample belongs to in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @param value \code{character} new population names.
#' @return \code{character}.
#' @export
sample.pops <- function(x) UseMethod('sample.pops')

#' @rdname sample.pops
#' @export
`sample.pops<-` <- function(x, value) UseMethod('sample.pops')

#' Sample labels
#'
#' This function returns the labels for each sample in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @param value \code{character} new labels.
#' @return \code{character}.
#' @export
sample.labels <- function(x) UseMethod('sample.labels')

#' @rdname sample.pops
#' @export
`sample.labels<-` <- function(x, value) UseMethod('sample.labels')


#' Subset populations
#'
#' This function returns a subset of populations in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, \code{BayeScan}.
#' @param populations \code{character} name of populations to subset.
#' @return \code{BayeScanData}.
#' @export
pop.subset <- function(x, populations) UseMethod('pop.subset')

#' Subset loci
#'
#' This function returns a subset of loci in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, or \code{BayeScan}.
#' @param loci \code{numeric} index of loci to subset. If \code{x} is a \code{BayeScan} object, then a \code{character} denoting the type of loci to subset. Valid arguments are 'adaptive', or 'neutral'. 
#' @return \code{BayeScanData}.
#' @export
loci.subset <- function(x, loci) UseMethod('loci.subset')

#' Subset samples
#'
#' This function returns a subset of the samples in a \code{BayeScan} object.
#' 
#' @param x \code{BayeScanData}, or \code{BayeScan}.
#' @param samples \code{numeric} index of samples to subset.
#' @return \code{BayeScanData}.
#' @export
sample.subset <- function(x, samples) UseMethod('sample.subset')

#' Nonmetric multidimensional scaling for AFLP data
#'
#' This function performs successive nonmetric multidimensional scaling analyses on the loci in a \code{BayeScan} object until an adequate stress level is acheived.
#'
#' @param x \code{BayeScanData} object.
#' @param max.stress \code{numeric} maximum allowed stress. Defaults to 0.1.
#' @param min.k \code{numeric} minimum number of dimensions to investigate. Defaults to 2.
#' @param max.k \code{numeric} maximum number of dimensions to investigate. Defaults to \code{Infinity}.
#' @param metric \code{character} name of distance metric to use. Valid arguments are 'euclidean', 'manhattan', or 'gower'. Defaults to 'gower'.
#' @param type \code{character} type of loci to analyse. Valid arguments are 'all', 'adaptive', or 'neutral'. Defaults to 'all'.
#' @param ... arguments passed to \code{link[vegan]{metaMDS}}.
#' @seealso \code{link[cluster]{daisy}}, \code{link[vegan]{metaMDS}}.
#' @return \code{\link[vegan]{metaMDS}} object.
#' @details The \code{link[cluster]{daisy}} function is used to calculate distances because it can accomodate missing values.
#' @examples
#' # run BayeScan using low number of iterations
#' dat <- read.BayeScanData(system.file('extdata', 'example_fstat_aflp.dat', package='bayescanr'))
#' x <- run.BayeScan(dat, threads=1, n=50, thin=1, nbp=10, pilot=10, burn=10)
#' # generate nmds using minimal iterations and only investigating a few k values
#' z <- nmds(x, metric='gower', min.k=2, max.k=5, trymax=5)
#' @export
nmds <- function(x, max.stress, min.k, max.k, metric, type, ...) UseMethod('nmds')

#' Print objects
#'
#' This function prints objects.
#'
#' @param x the object to print.
#' @param header \code{logical} should object header be shown?
#' @param ... not used.
#' @name print
NULL

#' Traceplot
#'
#' This function makes a traceplot showing convergence for multiple BayeScan runs.
#' @param x \code{BayeScanAnalysis} or \code{BayeScanResults} object.
#' @param ... not used.
#' @name traceplot
traceplot <- function(x, ...) UseMethod('traceplot')

#' Gelman-Rubin diagnostic statistics
#'
#' This function returns the Gelman-Rubin diagnostic statistics for the negative loglikelihood of multiple BayeScan runs. See \code{\link[coda]{gelman.diag}} for more information.
#' @param x \code{BayeScanAnalysis} or \code{BayeScanResults} object.
#' @param ... arguments passed to \code{\link[coda]{gelman.diag}}.
#' @name gelman.diag
gelman.diag <- function(x, ...) UseMethod('gelman.diag')

#' @method gelman.diag default
#' @rdname gelman.diag
#' @export
gelman.diag.default <- function(x, ...) {
	coda::gelman.diag(x, ...)
}

#' Show objects
#'
#' This function shows objects.
#'
#' @param object the object to show.
#' @name show
NULL
