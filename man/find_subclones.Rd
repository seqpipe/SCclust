% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_subclones.R
\name{find_subclones}
\alias{find_subclones}
\title{Identify subclones in a clonal branch of a hierarchical tree.}
\usage{
find_subclones(hc, pinmat, pins, nmin = 6, nsim = 500, njobs = NULL,
  lmmax = 0.001, hcmethod = "average", baseshare = 3, fdrthresh = -2,
  sharemin = 0.85, bymax = T, climbfromsize = 2, climbtoshare = 3,
  clonetype = "soft")
}
\arguments{
\item{hc}{The hclust object with clones identified.}

\item{pinmat}{The feature incidence matrix: columns are cells, rows are 
features, 1 if a feature is present, 0 if not.}

\item{nmin}{An integer. Default: 6. The minimal allowed size of a clone to 
be examined for subclones.}

\item{nsim}{The number of permutation simulations for subclone identification. 
Default: 500.}

\item{lmmax}{Numeric value. Default: 0.001. The threshold parameter for a 
linear fit, passed to fisherfdr function.}

\item{hcmethod}{Default: average}

\item{baseshare}{An integer. Default: 3. A balance parameter for controlling 
minimal number of shared features in a subclone node.}

\item{fdrthresh}{FDR criterion for subclone nodes. Default: -2.}

\item{sharemin}{A feature is considered shared if present in sharemin fraction 
of leaves in a node.Default: 0.85.}

\item{bymax}{Logical. If TRUE (Default), use maximal pairwise FDR for the node 
to find subclones, otherwise use mean over all pairs.}

\item{climbfromsize}{An integer specifying the minimal size of a hard 
subclone allowed to be expanded. Default: 2.}

\item{climbtoshare}{An integer the minimal number of widely shared features 
in a soft subclone Default: 3.}

\item{A}{two-column matrix, one row per feature, providing the bin number 
and thepy (sign) of the feature.}

\item{clonetype.}{A character string specifying whether hard or soft 
subclones are to be determined. Default: 'soft'.}
}
\value{
A list of hclust objects for clones.
}
\description{
Iterate the procedure for clone identification for a subset of cells forming 
a clone.
}
