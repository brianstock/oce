% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lobo.R
\docType{methods}
\name{subset,lobo-method}
\alias{subset,lobo-method}
\title{Subset a LOBO Object}
\usage{
\S4method{subset}{lobo}(x, subset, ...)
}
\arguments{
\item{x}{a \code{lobo} object.}

\item{subset}{a condition to be applied to the \code{data} portion of
\code{x}.  See \sQuote{Details}.}

\item{\dots}{ignored.}
}
\value{
A new \code{lobo} object.
}
\description{
Subset an lobo object, in a way that is somewhat
analogous to \code{\link{subset.data.frame}}.
}
\seealso{
Other things related to \code{lobo} data: \code{\link{[[,lobo-method}},
  \code{\link{[[<-,lobo-method}}, \code{\link{as.lobo}},
  \code{\link{lobo-class}}, \code{\link{lobo}},
  \code{\link{plot,lobo-method}},
  \code{\link{summary,lobo-method}}

Other functions that subset \code{oce} objects: \code{\link{subset,adp-method}},
  \code{\link{subset,adv-method}},
  \code{\link{subset,amsr-method}},
  \code{\link{subset,argo-method}},
  \code{\link{subset,cm-method}},
  \code{\link{subset,coastline-method}},
  \code{\link{subset,ctd-method}},
  \code{\link{subset,echosounder-method}},
  \code{\link{subset,met-method}},
  \code{\link{subset,oce-method}},
  \code{\link{subset,odf-method}},
  \code{\link{subset,rsk-method}},
  \code{\link{subset,sealevel-method}},
  \code{\link{subset,section-method}},
  \code{\link{subset,topo-method}}
}
\author{
Dan Kelley
}
