% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/5_parallel.R
\name{pick}
\alias{pick}
\alias{pick.telemetry}
\alias{pick.list}
\title{Pick subset from telemetry object/list}
\usage{
pick(object, m)

\method{pick}{telemetry}(tele, m)

\method{pick}{list}(tele_list, m)
}
\arguments{
\item{m}{m even spaced points are taken from each object. If m > data size,
all points are taken.}

\item{tele}{\code{\link[ctmm:as.telemetry]{ctmm::as.telemetry()}} telemetry object}

\item{tele_list}{\code{\link[ctmm:as.telemetry]{ctmm::as.telemetry()}} telemetry list}
}
\value{
\code{pick.telemetry}: telemetry object with m data points

\code{pick.list}: telemetry list of subsets
}
\description{
A dataset subset can have models fitted much quicker. This is used to reduce
waiting time in developing code that involved time consuming modeling
processes. After code is tested and stablized, full size dataset can be used.
}
\section{Methods (by class)}{
\itemize{
\item \code{telemetry}: subset from \code{\link[ctmm:as.telemetry]{ctmm::as.telemetry()}} telemetry object

\item \code{list}: pick subset from each \code{\link[ctmm:as.telemetry]{ctmm::as.telemetry()}} telemetry object
in list
}}

