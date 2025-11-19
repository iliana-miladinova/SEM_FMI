#task34
samples <- rnorm(500, 0, 1)
hist(samples, probability=TRUE)
curve(dnorm(x, 0, 1), add=TRUE)

#task35
samples <- runif(200, 7, 9)
plot.ecdf(samples, do.points=FALSE)
curve(punif(x, 7, 9), add=TRUE, col="blue", lwd=3)

#task37
samples <- rnorm(200, 4, 1.2)
plot.ecdf(samples, do.points=FALSE)
curve(pnorm(x, 4, 1.2), add=TRUE, col="pink", lwd=3)