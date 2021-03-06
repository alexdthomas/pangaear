% Generated by roxygen2 (4.0.2): do not edit by hand
\name{pg_list_records}
\alias{pg_list_records}
\title{List records from Pangaea}
\usage{
pg_list_records(prefix = "oai_dc", from = NULL, until = NULL,
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
List records from Pangaea
}
\examples{
\donttest{
res <- pg_list_records(from='2012-01-01', until='2012-01-15')
head(res$headers); NROW(res$headers)

res <- pg_list_records(set='geomound', from='2012-01-01', until='2012-01-05')
head(res$headers); NROW(res$headers)

# When no results found > "Error: Received condition 'noRecordsMatch'"
pg_list_records(set='geomound', from='2012-01-01', until='2012-01-01')

# More examples
res <- pg_list_records(set='citable', from='2012-01-01', until='2012-01-05')
head(res$headers)
res$metadata[[1]]

pg_list_records(prefix="iso19139", set='citable', from='2012-01-01', until='2012-01-05')
pg_list_records(prefix="dif", set='citable', from='2012-01-01', until='2012-01-05')
pg_list_records(prefix="dif", set='project4094', from='2012-01-01', until='2012-01-05')
}
}

