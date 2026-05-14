#' Data quality report
#'
#' This function gives a quick overview of the quality of a dataframe,
#' including number of rows, columns, missing values, and duplicate rows.
#'
#' @param data A dataframe
#' @return A list containing data quality information
#' @export

data_quality_report <- function(data) {

  if (!is.data.frame(data)) {
    stop("Input must be a data.frame")
  }

  list(
    n_rows = nrow(data),
    n_columns = ncol(data),
    total_missing = sum(is.na(data)),
    missing_per_column = colSums(is.na(data)),
    duplicate_rows = sum(duplicated(data))
  )
}
