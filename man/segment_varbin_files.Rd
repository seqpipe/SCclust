% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbs_segment.R
\name{segment_varbin_files}
\alias{segment_varbin_files}
\title{Generate the segmented profile for each cell.}
\usage{
segment_varbin_files(varbin_files, gc_df, badbins = NULL)
}
\arguments{
\item{varbin_files}{list of bin count files for all cells produced by 
'varbin' step of 'sgains' package.}

\item{gc_df}{binning scheme used for the analysis.}

\item{badbins}{list of bins that should be excluded from the analysis.}
}
\value{
The list containing seg quantal and ratio quantal matrix for all cells.
}
\description{
Generate the segmented profile for each cell in the input directory using CBS.
}
