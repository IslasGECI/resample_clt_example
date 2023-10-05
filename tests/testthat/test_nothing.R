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
    expected_means <- c(expected_mean_first_column, expected_mean_second_column)
    obtained_mean_first_column <- mean(obtained[, 1])
    expect_equal(obtained_mean_first_column, expected_means[1], tolerance = 1e-2)
    obtained_mean_second_column <- mean(obtained[, 2])
    expect_equal(obtained_mean_second_column, expected_means[2], tolerance = 1e-2)
  })
})
