% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{TSSEnrichment}
\alias{TSSEnrichment}
\title{Compute TSS enrichment score per cell}
\usage{
TSSEnrichment(
  object,
  tss.positions,
  assay = NULL,
  cells = NULL,
  verbose = TRUE
)
}
\arguments{
\item{object}{A Seurat object}

\item{tss.positions}{A GRanges object containing the TSS positions}

\item{assay}{Name of assay to use}

\item{cells}{A vector of cells to include. If NULL (default), use all cells
in the object}

\item{verbose}{Display messages}
}
\value{
Returns a \code{\link[Seurat]{Seurat}} object
}
\description{
Compute the transcription start site (TSS) enrichment score for each cell, as defined by ENCODE:
\url{https://www.encodeproject.org/data-standards/terms/}.
}
\details{
The computed score will be added to the object metadata as "TSS.enrichment".
}
\examples{
\donttest{
library(EnsDb.Hsapiens.v75)
gene.ranges <- genes(EnsDb.Hsapiens.v75)
gene.ranges <- gene.ranges[gene.ranges$gene_biotype == 'protein_coding', ]
tss.ranges <- GRanges(
  seqnames = seqnames(gene.ranges),
  ranges = IRanges(start = start(gene.ranges), width = 2),
  strand = strand(gene.ranges)
)
seqlevelsStyle(tss.ranges) <- 'UCSC'
tss.ranges <- keepStandardChromosomes(tss.ranges, pruning.mode = 'coarse')

fpath <- system.file("extdata", "fragments.tsv.gz", package="Signac")
atac_small <- SetFragments(object = atac_small, file = fpath)
TSSEnrichment(object = atac_small, tss.positions = tss.ranges[1:100])
}
}
