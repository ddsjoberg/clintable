context("test-fmt_pvalue")

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("no errors/warnings with standard use", {
  pvals <- c(
    1.5, 1, 0.999, 0.5, 0.25, 0.2, 0.12, 0.10, 0.06,
    0.03, 0.002, 0.0002, 0.00002, -1
  )
  expect_error(fmt_pvalue(pvals), NA)
  expect_error(fmt_pvalue(pvals, digits = 1, prepend_p = TRUE), NA)
  expect_warning(fmt_pvalue(pvals), NA)
  expect_warning(fmt_pvalue(pvals, digits = 1, prepend_p = TRUE), NA)
})


test_that("NA, <0, and >1 returns NA", {
  expect_true(is.na(fmt_pvalue(NA)))
  expect_true(is.na(fmt_pvalue(-1)))
  expect_true(is.na(fmt_pvalue(2)))
})
