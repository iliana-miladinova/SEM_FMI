#task33
samples <- rexp(500, 1/7)  
hist(samples, probability=TRUE)
curve(dexp(x, 1/7), from=0, to=max(sample), add=TRUE, lwd=1)



nr <- rnorm(50000, 0, 1)
hist(nr, probability=TRUE, xlim=c(-3,3))

#task32
samples <- runif(500, 3, 5)
hist(samples, probability=TRUE)
curve(dunif(x, 3, 5), from=3, to=5, add=TRUE, lwd=1)

#task36
samples <- rexp(200, 3)
plot.ecdf(samples, do.points=FALSE)
curve(pexp(x, 3), add=TRUE, col="red")

#task41!!!
## X - orange juice in a bottle
## X ~ U(495, 502)
## a) P(X > 500) = 1 - P(X <= 500)   because we prefer to work with < when we are working with probabilities
1 - punif(500, 495, 502)

## b) P(X > v) = 0.8,  P(X <= v) = 0.2
qunif(0.2, 495, 502)

#task42
## X - time until problem
## X ~ Exp(1/4)
## a) P(X > 3) = 1 - P(X <= 3)
1 - pexp(3, 1/4)

## b) P(X <= 2)
pexp(2, 1/4)

## c) P(X > 6 | X > 3) = ... = P(X > 6) / P(X > 3)
(1 - pexp(6, 1/4)) / (1 - pexp(3, 1/4))
