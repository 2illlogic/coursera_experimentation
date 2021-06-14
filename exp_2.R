C <- T <- S <- c(-1, 1)

design <- expand.grid(C=C, T=T, S=S)
C <- design$C
T <- design$T
S <- design$S
y <- c(5, 30, 6, 33, 4, 3, 5, 4)

#water <- lm(y ~ C + T + S + C*T + C*S + T*S + C*T*S)
water <- lm(y ~ C*T*S)

summary(water)

library(pid)
paretoPlot(water)