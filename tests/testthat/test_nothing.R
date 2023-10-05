describe("Mean by row", {
  obtained <- return_distribution_of_mean_5_number()
  it("has the right dimension", {
    expected_length <- 2000
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
  obtained_first_example <- first_example(distributions_matrix)
  it("First example", {
    obtained_length <- length(obtained_first_example)
    expected_length <- 2000
    expect_equal(obtained_length, expected_length)
    expected_mean <- mean(c(10, 20, 30, 60, 100))
    obtained_mean <- mean(obtained_first_example)
    expect_equal(obtained_mean, expected_mean, tolerance = 1e-2)
  })
  obtained_second_example <- second_example(distributions_matrix)
  it("Second example", {
    obtained_length <- length(obtained_second_example)
    expected_length <- 2000
    expect_equal(obtained_length, expected_length)
    expected_mean <- mean(c(10, 20, 30, 60, 100))
    obtained_mean <- mean(obtained_second_example)
    expect_equal(obtained_mean, expected_mean, tolerance = 1e-2)
    obtained_range_length <- max(obtained_second_example) - min(obtained_second_example)
    is_a_distribution <- obtained_range_length > 0
    expect_true(is_a_distribution)
  })
  it("Obtain standard deviation", {
    first_example_sd <- sd(obtained_first_example)
    second_example_sd <- sd(obtained_second_example)
    is_wider_the_first <- first_example_sd > second_example_sd
    expect_true(is_wider_the_first)
    print(paste0("Desviación del primer ejemplo ", first_example_sd))
    print(paste0("Desviación del segundo ejemplo ", second_example_sd))
  })
})
