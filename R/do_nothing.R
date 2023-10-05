return_distribution_of_mean_5_number <- function() {
  x <- c(rnorm(2000, 10, 1), rep(rnorm(2000, 20, 1), 4))
  matrix(x, nrow = 2000, ncol = 5)
}
