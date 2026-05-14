#' Remove rows with missing values
#'
#' This function removes rows containing missing values from a dataframe.
#'
#' @param data A dataframe
#' @return A cleaned dataframe without missing values
#' @export

remove_na <- function(data) {
  if (!is.data.frame(data)) {
    stop("Input must be a data.frame")
  }

  na.omit(data)

}
