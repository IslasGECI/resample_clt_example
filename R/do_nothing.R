return_one <- function() {
  return(1)
}

return_distribution_of_mean_5_number <- function() {
  comprehenr::to_vec(for (i in seq(2000)) mean(rnorm(5, 0, 1)))
}
