% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/staple_pdf.R
\name{staple_pdf}
\alias{staple_pdf}
\title{Merge multiple PDF files into one}
\usage{
staple_pdf(input_directory = NULL, input_files = NULL,
  output_filepath = NULL)
}
\arguments{
\item{input_directory}{the path of the input PDF files.
The default is set to NULL. If NULL, it  prompt the user to
select the folder interactively.}

\item{input_files}{a vector of input PDF files. The default is set to NULL. If NULL and \code{input_directory} is also NULL, the user is propted to select a folder interactively.}

\item{output_filepath}{the path of the output output PDF file.
The default is set to NULL. IF NULL, it  prompt the user to
select the folder interactively.}
}
\value{
this function returns a combined PDF document
}
\description{
If the toolkit Pdftk is available in the
system, it will be called to merge the PDF files.

See the reference for detailed usage of \code{pdftk}.
}
\examples{
\dontrun{
staple_pdf()
}

\dontrun{
dir <- tempdir()
require(lattice)
for(i in 1:3) {
pdf(file.path(dir, paste("plot", i, ".pdf", sep = "")))
print(xyplot(iris[,1] ~ iris[,i], data = iris))
dev.off()
}
output_file <- file.path(dir, paste('Full_pdf.pdf',  sep = ""))
staple_pdf(input_directory = dir, output_file)
}
}
\references{
\url{https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/}
}
\author{
Priyanga Dilini Talagala and Daniel Padfield
}
