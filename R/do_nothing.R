return_distribution_of_mean_5_number <- function() {
  x <- c(rnorm(2000, 10, 1), rnorm(2000, 20, 1), rnorm(2000, 30, 1), rnorm(2000, 60, 1), rnorm(2000, 100, 1))
  matrix(x, nrow = 2000, ncol = 5)
}

first_example <- function(distributions) {
  n_samples <- 2000
  comprehenr::to_vec(for (i in 1:n_samples) mean(distributions[i, ]))
}
