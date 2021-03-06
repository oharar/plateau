% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/glm.env.fn.R
\name{glm.env.fn}
\alias{glm.env.fn}
\title{Calculate deviance of plateau envelope via GLM}
\usage{
glm.env.fn(pars, y, x.clim, x.nonclim = NULL, x.nonclim.formula = NULL,
  constrain.beta = FALSE, slope.limit = 7)
}
\arguments{
\item{pars}{The vector of envelope parameters, length 2p+p+2+p(p-1)/2.}

\item{y}{The binary response variable (taking values 0 or 1 for absence and
presence respectively).}

\item{x.clim}{The n by p matrix of climate covariates.}

\item{x.nonclim}{The n by p2 matrix of non-climate covariates (default
\code{NULL}).}

\item{x.nonclim.formula}{The pre-specified formula if non-climate variables
are included.}

\item{constrain.beta}{Should a ridge penalty be imposed on the betas
(slopes)? Takes the form either of: a matrix of dimension p by 2
(specifying \code{TRUE} for a ridge penalty for a given beta, or
\code{FALSE} otherwise); or of a single value \code{FALSE} to imply no
ridge penalties at all.}

\item{slope.limit}{Scalar putting an upper bound on the envelope slopes;
limit is approximately \code{exp(slope.limit)}.}
}
\value{
The (scalar) deviance for fitted GLM using specified envelope
(possibly including a ridge penalty if set).
}
\description{
\code{glm.env.fn} fits the plateau envelope as part of a GLM. It is called
by the function \code{fit.glm.env} and is not intended for use interactively.
At present, only binary (logistic) response models for presence/absence
data are implemented.
}

