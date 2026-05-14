#' Remove columns with only missing values
#'
#' This function removes columns that contain only NA values.
#'
#' @param data A dataframe
#' @return A dataframe without empty columns
#' @export

remove_empty_columns <- function(data) {

  if (!is.data.frame(data)) {
    stop("Input must be a data.frame")
  }

  data[, colSums(!is.na(data)) > 0]
}
