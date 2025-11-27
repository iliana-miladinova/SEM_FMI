#task68
## X - mass of baggage 
## EX=24, sigma=7
##P(X1+...+X160 > 4000)=?
n <- 160
mu <- 24
std <- 7
target <- 4000
x = ((target / n) - mu) / (std / sqrt(n))
x

1 - pnorm(x, 0, 1)

#task67
raisins <- sample(c(4, 5, 6, 7), 10, replace=TRUE, prob=c(0.2, 0.4, 0.3, 0.1))
raisins
n <- 49
mu <- 5.3
std <- 0.9
target <- 5.5
x <- ((target - mu) / (std / sqrt(n)))
x
1 - pnorm(x, 0, 1)