#' @title Use the xkcd API
#' @description
#' The `RPackage` function calls the xkcd JSON API and returns
#' metadata about the comic in the form of a list
#' @param number A scalar numeric vector corresponding to an xkcd comic number
#' @importFrom jsonlite read_json
#' @returns A list of 13 elements
#' * month: A scalr character vetor
#' * nume: A scalar numeric vector
#' * link: A scalar character vector, may be mepty
#' * year: A scalar character vector
#' * news: A scalar character vector, may be empty
#' * safe title: A scalar character vector
#' * transcript: A scalar character vector
#' * alt: A scalar character vector
#' * img: A scalar character vector
#' * title: A scalar character vector
#' * day: A scalar character vector
#' @examples
#' dino_time<- xkcd(15)
#' str(dino_time)
#' @export
RPackage <- function(number) {
  url <- file.path("https://xkcd.com", floor(number), "info.0.json")
  x <- jsonlite::read_json(url)
  return(x)
}

