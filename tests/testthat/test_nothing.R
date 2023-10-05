describe("Mean by row", {
  it("2000 means of 5 numbers", {
    expected_length <- 2000
    obtained <- return_distribution_of_mean_5_number()
    obtained_length <- nrow(obtained)
    obtained_cols <- ncol(obtained)
    expect_equal(obtained_length, expected_length)
    expected_cols <- 5
    expect_equal(obtained_cols, expected_cols)
  })
})
