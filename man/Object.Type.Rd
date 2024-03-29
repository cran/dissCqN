% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper-fun.R
\name{Object.Type}
\alias{Object.Type}
\alias{isList}
\alias{isBoot}
\alias{isMod}
\title{Object Types}
\usage{
isList(x)

isBoot(x)

isMod(x)
}
\arguments{
\item{x}{An R object.}
}
\value{
A logical value.
}
\description{
Functions to determine the 'type' of an R object using classes.
Intended largely for convenience and internal use.
}
\section{Functions}{
\itemize{
\item \code{isList}: Is object a list (class \code{"list"} only)?

\item \code{isBoot}: Is object a boot object (class \code{"boot"})?

\item \code{isMod}: Is object a fitted model?
}}

\keyword{internal}
