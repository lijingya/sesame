% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_methylation.R
\name{DML}
\alias{DML}
\title{Test differential methylation on each locus}
\usage{
DML(betas, sample.data, formula, se.lb = 0.06, balanced = FALSE,
  cf.test = NULL)
}
\arguments{
\item{betas}{beta values}

\item{sample.data}{data frame for sample information, column names
are predictor variables (e.g., sex, age, treatment, tumor/normal etc)
and are referenced in formula. Rows are samples.}

\item{formula}{formula}

\item{se.lb}{lower bound to standard error of slope, lower this to get
more difference of small effect size.}

\item{balanced}{whether design is balanced or not. default to FALSE, when
unbalanced will use Welch's method to estimate standard error.
balance=TRUE is faster.}

\item{cf.test}{factors to test (default to all factors in formula except
intercept). Use "all" for all factors.}
}
\value{
cf - a list of coefficient tables for each factor
}
\description{
The function takes a beta value matrix with probes on the rows and
samples on the columns. It also takes a sample information data frame
(sample.data) and formula for testing. The function outputs a list of
coefficient tables for each factor tested.
}
\examples{
data <- sesameDataGet('HM450.76.TCGA.matched')
cf <- DML(data$betas, data$sampleInfo, ~type)
}
