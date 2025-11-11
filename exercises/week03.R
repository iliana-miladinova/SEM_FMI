#task23
1 - pbinom(4, 10, 1/4)

#task24
#a)
pbinom(138, 143, 0.92)
#b)
dbinom(137, 143, 0.92)

#task25
#a)
pgeom(10 - 1, 0.03) #because X counts non-faulty ones before the first faulty, so ≤9 means among the first 10
#b)
1 - pbinom(1, 50, 0.03)

#task26
1 - phyper(1, 3, 97, 50)

#task27
1 - phyper(1, 90, 2910, 50)

#task28
#a)
1 - pgeom(3, 1/10)
#b)
1 - pnbinom(39, 10, 1/10)

#task30
1 - phyper(1, 13, 39, 10)

#task31
1 - pbinom(1, 10, 13/52)