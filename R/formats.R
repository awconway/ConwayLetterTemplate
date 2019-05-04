#' Output format for letter
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in ConwayLetterTemplate style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/Letter/resources/letter.tex",
                          package="ConwayLetterTemplate")
   bookdown::pdf_document2(...,
     template = template
   )
}

#' @rdname letter
