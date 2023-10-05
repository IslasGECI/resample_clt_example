describe("Mean by row", {
  obtained <- return_distribution_of_mean_5_number()
  it("has the right dimension", {
    expected_length <- 2000
    print(obtained)
    obtained_length <- nrow(obtained)
    obtained_cols <- ncol(obtained)
    expect_equal(obtained_length, expected_length)
    expected_cols <- 5
    expect_equal(obtained_cols, expected_cols)
  })
  it("The means of columns are differents", {
    expected_mean_first_column <- 10
    expected_mean_second_column <- 20
    expected_means <- c(expected_mean_first_column, expected_mean_second_column, 30, 60, 100)
    obtained_means <- comprehenr::to_vec(for (i in 1:5) mean(obtained[, i]))
    expect_equal(obtained_means, expected_means, tolerance = 1e-2)
  })
  distributions_matrix <- return_distribution_of_mean_5_number()
  it("First example", {
    obtained_first_example <- first_example(distributions_matrix)
    obtained_length <- nrow(obtained_first_example)
    expected_length <- 2000
    expect_equal(obtained_length, expected_length)
  })
})
