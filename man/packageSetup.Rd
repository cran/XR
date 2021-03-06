% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/packageSetup.R
\name{packageSetup}
\alias{packageSetup}
\title{Execute a Setup Step for a Package}
\usage{
packageSetup(file = "setup.R", dir = ".", needPackage = TRUE)
}
\arguments{
\item{file}{The name of the files to be parsed and evaluated for the setup step,  by default,
\code{"setup.R"}.  Will look in the the current directory or the inst/tools directory
for a file of this name.}

\item{dir}{Optional directory to use as the working directory for the evaluation. By default
the current working directory should be the source directory for the package.}

\item{needPackage}{The package for which the setup is intended.  Not needed if the working
directory (either currently or given by \code{dir} is the source directory for that package.
If supplied can be either the package name or \code{FALSE} if the setup is not intended for
a package.}
}
\description{
The R code in one or more files is evaluated to carry out setup computations that will
write some code, documentation or anything else into the source directory of an R package.
Designed for package authors who want to use techniques such as the proxy classes in the
XR set of interfaces, \code{compileAttributes()} in Rcpp or inline documentation in roxygen2.
}
\details{
The computations will be carried out in an environment constructed by\code{packageSetup()}
with the namespace of the package as its parent, and a \code{.packageName} object to
associate it with the package.  By default, the setup step looks for the \code{DESCRIPTION} file in the
working directory to find the package name.  The package must have been installed in the
library path of this R session.
}
