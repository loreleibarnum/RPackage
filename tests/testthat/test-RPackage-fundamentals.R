test_that("Ensure xkcd objects have the correct size and type",{
  third_comic <- RPackage(3)
  expect_length(third_comic, 11) # xkcd objects should have 11 elements
  expect_true(is.list(third_comic))
          })
