return_distribution_of_mean_5_number <- function() {
  x <- rep(rnorm(2000, 10, 1), 5)
  matrix(x, nrow = 2000, ncol = 5)
}
