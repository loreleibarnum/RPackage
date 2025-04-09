#' @title Use the xkcd API
#' @description
#' The `RPackage` function calls the xkcd JSON API and returns
#' metadata about the comic in the form of a list
#'
#' @importFrom jsonlite read_json
#' @export
RPackage <- function(number) {
  url <- file.path("https://xkcd.com", floor(number), "info.0.json")
  x <- jsonlite::read_json(url)
  return(x)
}

