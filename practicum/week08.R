#task70
## X ~ Bern(p), X_1, ..., X_n iid - X
## H_0: p=0.5, H_1: p > 0.5
n <- 100
x <- 58
p_0 <- 0.5

#prop.test(x=x, n=n, p=p_0, alternative="greater", correct=FALSE)
p_value <- prop.test(x=x, n=n, p=p_0, alternative="greater", correct=FALSE)$p.value

#p_value > 0.05, т.е. нямаме достатъчно данни, за да отхвърлим нулевата хипотеза

z_obs <- (x/ n - p_0) / sqrt((p_0 * (1 - p_0)) / n)
z_obs
1 - pnorm(z_obs, 0, 1)

#task71
n <- 100
x <- 61
p_0 <- 0.5

prop.test(x=x, n=n, p=p_0, alternative="greater", correct=FALSE)

#p_value < 0.05, т.е. нулевата хипотеза се отхвърля в полза на алтернативната, т.е. средното действително е повече от 0.5

z_obs <- (x/ n - p_0) / sqrt((p_0 * (1 - p_0)) / n)
z_obs
1 - pnorm(z_obs, 0, 1)

#task72
## D - N(mu, 0.12^2)
## H_0: mu = ?, H_1: mu =/= ?

mu_0 <- 6.7
n <- 45
x_bar <- 6.73
sigma <- 0.12

z_obs <- (x_bar - mu_0) / (sigma / sqrt(n))
p_value <- 2 * (1 - pnorm(z_obs, 0, 1))
p_value
#p_value е приблизитело 9.3% > 0.05, т.е. наличните сведения не са достатъчни да отхвърлим нулевата хипотеза, т.е тези данни не отхвърлят твърдението, че средният диаметър е 6.7 см

#task73    да се преправи по условието
## D - N(mu, 0.12^2)
## H_0: mu = ?, H_1: mu =/= ?

mu_0 <- 6.7
n <- 45
x_bar <- 6.76
sigma <- 0.12

z_obs <- (x_bar - mu_0) / (sigma / sqrt(n))
p_value <- 2 * (1 - pnorm(z_obs, 0, 1))
p_value
#p_value е приблизитело 0.0007 < 0.05, т.е. данните налагат отхвърлянето на нулевата хипотеза, т.е. данните отхвърлят твърдението, че средният диаметър е 6.7 см. 

#task74
## K - N(mu, sigma^2)
## Ще приложим t-test, понеже са налице неизвестни очакване и дисперция
## H_0: mu=4, H_1: mu <4
x <- c( 3.1, 3.0, 3.7, 2.6, 4.2, 3.8, 3.6, 2.7, 3.8, 4.4)
t.test(x, mu=4, alternative="less")

## получихме p_value 0.013 < 0.05, т.е. данните налагат отхвърлянето на нулевата хипотеза и действително показват че средноето е по-малко от 4

##2 nachin
n <- 10
x_bar <- mean(x)
sigma <- sd(x)
t_obs <- (x_bar - 4) / (sigma / sqrt(10))
pt(t_obs, n - 1)

#task76
x <- c( 12.3, 11.2, 14.2, 15.3, 14.8, 13.5, 11.1, 15.1, 15.4, 13.2)
#a)
t.test(x, mu=14.6, correct=FALSE)
#b)
t.test(x, mu=14.6, alternative="less", correct=FALSE)