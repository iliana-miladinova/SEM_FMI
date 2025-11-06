#task21
phyper(1, 5, 3, 2)

#task22
## X - num charged batteries
## X ~ HyperGeom(5+3, 5, 2)
lambda = 5 * 300 /500
#a) P(X<=2)
ppois(2, lambda)
#b)P(1<=x<=3) = P(x<=3) - P(x=0)
ppois(3, lambda) - dpois(0, lambda)

#task29
lambda1 = 360 * 1/90
1 - ppois(3, lambda1)