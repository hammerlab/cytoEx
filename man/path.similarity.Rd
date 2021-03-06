% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolate.tree.R
\name{path.similarity}
\alias{path.similarity}
\title{calculate the similarity between two gating paths}
\usage{
path.similarity(x, y)
}
\arguments{
\item{x, y}{two strings representing the gating paths}
}
\description{
calculate the similarity between two gating paths
}
\examples{
#the first is smaller is than the second one
path.similarity("/LYM/singlets/CD8+/CD45RA+/CCR7+", "/LYM/singlets/CD8+/CD45RA-/CD3+")
path.similarity("/LYM/singlets/CD8+/CD45RA+/CCR7+", "/LYM/singlets/CD8+/CD45RA-/CCR7+")
path.similarity("/LYM/singlets/CD8+/CD45RA+/CCR7+", "/LYM/singlets/CD8-/CD45RA-/CD4-/HLADR-/CD3+")
}

