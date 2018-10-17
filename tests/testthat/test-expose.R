context('Expose Stan models')
library(rstanlm)
library(rstan)

test_that("expose Stan functions", {
  model <- stanmodels[['lm']]
  message(class(model))
  expose_stan_functions(model)
  fib(9)
})
