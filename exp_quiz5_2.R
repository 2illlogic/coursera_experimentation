rm(list = ls())

a <- c(-1,1,-1,1,0)
b <- c(-1,-1,1,1,0)
c <- c(1,-1,-1,1,0)
y <- c(80,86,82,89,84)

cake <- lm(y ~ a*b*c)
summary(cake)

cake <- lm(y ~ a*b)
summary(cake)

#round 2
y <- c(93,94,96,79,95)
cake2 <- lm(y ~ a*b)
summary(cake)

#problem 3
p <- c(-1,1,-1,1)
t <- c(-1,-1,1,1)
y <- c(12,5,13,6)

weed <- lm(y ~ p*t)
summary(weed)

#problem 4
D <- c(0, -1, +1, -1, +1, 0, 0, +1.41, 0, -1.41, 0)
T <- c(0, -1, -1, +1, +1, 0, -1.41, 0, 1.41, 0, 0)
y <- c(60, 49, 30, 62, 50, 56, 26, 40, 63, 57, 62)

mod <- lm(y ~ D*T + I(D^2) + I(T^2))
summary(mod)