#' Remove duplicate rows
#'
#' This function removes duplicate rows from a dataframe.
#'
#' @param data A dataframe
#' @return A cleaned dataframe without duplicate rows
#' @export

remove_duplicates <- function(data) {
  if (!is.data.frame(data)) {
    stop("Input must be a data.frame")
  }

  dplyr::distinct(data)

}
