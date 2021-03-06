% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bibliography.R
\name{bibliography}
\alias{bibliography}
\title{Generate the bibliography}
\usage{
bibliography(style = "text", ...)
}
\arguments{
\item{style}{see RefManageR::PrintBibliography}

\item{...}{additional arguments passed to PrintBibliography,}
}
\value{
a list of works cited
}
\description{
Generate the bibliography
}
\details{
For non-trivial bibliographies, knitcitations recommends authors use 
pandoc format, and allow pandoc 
to generate the references list rather than rely on the bibliography() function. 
Pandoc has rich CSL support using any provided CSL file (see Pandoc documentation
for details) and is integrated into recent version of RStudio.
}
\examples{
citet(citation("httr"))
citet(citation("digest"))
bibliography()
bibliography(sorting = 'ynt') # sort by year, then name, title
bibliography(sorting = 'ydnt') # sort by year, descending, then name, title
cleanbib()

\donttest{
# these examples require an internet connection 
citet("Vos NeXML 2012")
citet("Boettiger Ross Hastings 2013")
bibliography(sorting = 'ynt') # obeys sorting rule 
}
}
