library(greta)

x <- iris$Petal.Length
y <- iris$Sepal.Length

int = normal(0, 5)
coef = normal(0, 3)
sd = lognormal(0, 3)

mean <- int + coef * x
distribution(y) = normal(mean, sd)

m <- model(int, coef, sd)

draws <- mcmc(m, n_samples = 1000)
bayesplot::mcmc_trace()
