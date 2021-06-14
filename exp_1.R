A <- c(-1, 1, -1, 1)
B <- c(-1, -1, 1, 1)

y <- c(52, 74, 62, 80)

two_factor <- lm(y ~ A + B + A*B)

summary(two_factor)

y <- c(3, 5, 4, 9)

ginger_b <- lm(y ~ A + B + A*B)

ginger_b
