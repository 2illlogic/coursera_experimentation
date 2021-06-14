#round 1
rm(list = ls())

p <- c(0,-1,1,-1,1)
t <- c(0, -1,-1,1,1)
y <- c(407,193,468,310,571)
mod.base <- lm(y ~ p*t)
summary(mod.base)

#library(pid)
#contourPlot(mod.base,'p','t')

#create a matrix of variable values
#note added intercept column of 1's 
x <- matrix(c(rep(1,length(p)),p,t,p*t),nrow = 5, byrow = 0)

#to see the model coefficients applied to x
#each column represents one calculation using the model
coef(mod.base) * t(x)

#to get model predictions
#each entry is the y value for the corresponding row of x
x %*% coef(mod.base)

#extension
xt <- c(1,2.44,1,2.44)
t(xt) %*% coef(mod.base)

#round 2
y2 <- c(657,571,669,620,710)

mod.base2 <- lm(y2 ~ p*t)
summary(mod.base2)

xt <- c(1,1.5,0.718,1.5*0.718)
t(xt) %*% coef(mod.base2)