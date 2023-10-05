describe("Mean by row", {
  it("2000 means of 5 numbers", {
    expected_length <- 2000
    obtained <- return_distribution_of_mean_5_number()
    obtained_length <- length(obtained)
    expect_equal(obtained_length, expected_length)
  })
})
