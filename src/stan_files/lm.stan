// Save this file as src/stan_files/lm.stan
functions {
  int fib(int n);
  int fib(int n) {
    if (n < 2) return n;
    else return fib(n-1) + fib(n-2);
  }
}

data {
  int<lower=1> N;
  vector[N] x;
  vector[N] y;
}
parameters {
  real intercept;
  real beta;
  real<lower=0> sigma;
}
model {
  // ... priors, etc.

  y ~ normal(intercept + beta * x, sigma);
}
