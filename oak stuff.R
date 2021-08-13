
install.packages('testthat')
install.packages('devtools')
install.packages('remotes')

library(testthat)

#' Title
#'
#' @param df 
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  col_means <- apply(df, MARGIN = 2, FUN = mean, na.rm = TRUE)
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  return(c(col_mean_min, col_mean_max))
}

expect_length(mean_range(df = mtcars), 3)

# Test is true so no message 
expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])

# Switch them and you get that this is FALSE when it should be TRUE 
expect_true(mean_range(mtcars)[2] < mean_range(mtcars)[1])



expect_type(mean_range(mtcars), "character")
























