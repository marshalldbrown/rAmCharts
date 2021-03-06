testthat::context("amBullet")

x <- replicate(1000, {
  if (round(runif(1))) {
    rnorm(1)
  } else {
    rnorm(1, mean = 5)
  }
})



testthat::test_that("Basic example", {
  testthat::expect_silent({
    # Default method
    (object <- amHist(x = x))
    
    # Without plot
    amHist(x = x, plot = FALSE)
    
    # With options
    amHist(x = x, border = "blue")
    amHist(x = x, col = "lightblue", control_hist = list(breaks = 100))
    amHist(x = x, col = "grey")
    amHist(x = x, col = "gray")
    amHist(x = x, main = "Histogram", ylab = "y-axis", xlab = "x-axis", col = "red")
    amHist(x = x, main = "Histogram", ylab = "y-axis", xlab = "x-axis", ylim = c(10, 15))
    amHist(x = x, main = "Histogram", ylab = "y-axis", xlab = "x-axis")
    
    # Options for computing the histogram
    amHist(x = x, control_hist = list(breaks = "Scott"))
  })
})

