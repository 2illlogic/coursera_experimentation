#problem2
#v1
a <- c(-1,1,-1,1)
b <- c(-1,-1,1,1)
y <- c(39,32,37.5,31.5)

elec <- lm(y ~ a + b + a*b)
summary(elec)

#v2 - discounting b, adding 2 exps
a <- c(-1,1,-1,1,1.8,2.6)
y <- c(39,32,37.5,31.5,26,24.5)

elec <- lm(y ~ a + I(a^2))
summary(elec)

#v3 - adding 2 exps
a <- c(-1,1,-1,1,1.8,2.6)
b <- c(-1,-1,1,1,-1,-1)
y <- c(39,32,37.5,31.5,26,24.5)

elec <- lm(y ~ a + b + a*b)
summary(elec)

summary(lm(y ~ a*b))

#problem 3
p <- c(-1,1,-1,1,-1,1,-1,1,0)
s <- c(-1,-1,1,1,-1,-1,1,1,0)
d <- c(-1,-1,-1,-1,1,1,1,1,1)
y <- c(15,5,16,4,15,5,16,4,12)

mis <- lm(y ~ p*s*d)
summary(mis)

mis <- lm(y ~ p + I(p^2))
#mis <- lm(y ~ p + p*p) - doesn't work, must use I()
summary(mis)

#problem 4
rm(list = c('y'))
s <- c(-1,1,-1,1,0)
v <- c(-1,-1,1,1,0)
y <- c(4,5,12,13,8)

fl <- lm(y ~ s*v)
summary(fl)

#s <- c(-1,1,-1,1,0)
v <- c(-1,-1,1,1,0,2)
y <- c(4,5,12,13,8,20)

fl <- lm(y ~ v)
summary(fl)

v <- c(-1,-1,1,1,0,2)
y <- c(4,5,12,13,8,20)

fl <- lm(y ~ v + I(v^2))
summary(fl)