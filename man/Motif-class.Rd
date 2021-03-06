% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\docType{class}
\name{Motif-class}
\alias{Motif-class}
\alias{Motif}
\title{The Motif class}
\description{
The Motif class stores DNA motif information
}
\section{Slots}{

\describe{
\item{\code{data}}{A sparse, binary, feature x motif matrix. Columns
correspond to motif IDs, rows correspond to genomic features
(peaks or bins). Entries in the matrix should be 1 if the
genomic feature contains the motif, and 0 otherwise.}

\item{\code{pwm}}{A named list of position weight matrices}

\item{\code{motif.names}}{A list containing the name of each motif}

\item{\code{meta.data}}{A dataframe for storage of additional
information related to each motif. This could include the
names of proteins that bind the motif.}
}}

