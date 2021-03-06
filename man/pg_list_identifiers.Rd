% Generated by roxygen2 (4.0.2): do not edit by hand
\name{pg_list_identifiers}
\alias{pg_list_identifiers}
\title{List identifiers of the Pangaea repository}
\usage{
pg_list_identifiers(prefix = "oai_dc", from = NULL, until = NULL,
  set = NULL, ...)
}
\arguments{
\item{prefix}{A character string to specify the metadata format in OAI-PMH requests issued to
the repository. The default (\code{"oai_dc"}) corresponds to the mandatory OAI unqualified
Dublin Core metadata schema.}

\item{from}{Character string giving datestamp to be used as lower bound for datestamp-based
selective harvesting (i.e., only harvest records with datestamps in the given range). Dates
and times must be encoded using ISO 8601. The trailing Z must be used when including time.
OAI-PMH implies UTC for data/time specifications.}

\item{until}{Character string giving a datestamp to be used as an upper bound,
for datestamp-based selective harvesting (i.e., only harvest records with datestamps in
the given range).}

\item{set}{A character string giving a set to be used for selective harvesting (i.e., only
harvest records in the given set).}

\item{...}{Curl debugging options passed on to \code{\link[httr]{GET}}}
}
\description{
List identifiers of the Pangaea repository
}
\examples{
\donttest{
pg_list_identifiers(from='2012-01-01', until='2012-01-05')
pg_list_identifiers(from='2013-10-01', until='2013-10-05')
pg_list_identifiers(from='2013-10-01', until='2013-10-03', set="geocode1")
pg_list_identifiers(prefix="iso19139", from='2012-01-01', until='2012-01-05')
pg_list_identifiers(prefix="dif", from='2012-01-01', until='2012-01-05')

library('httr')
pg_list_identifiers(prefix="dif", from='2012-01-01', until='2012-01-05', config=verbose())
}
}

