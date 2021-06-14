library(pid)

A <- B <- C <- c(-1,1)
design <- expand.grid(A=A, B=B, C=C)

A <- design$A
B <- design$B
C <- design$C

#quiz problem 3
D <- R <- c(-1,1)
design <- expand.grid(D=D, R=R)
D <- design$D
R <- design$R
P <- D*R
y <- c(3,9,3,7)

chicken.lm <- lm(y ~ D * R * P)
summary(chicken.lm)

#quiz problem 7
A <- B <- C <- c(-1,1)
design <- expand.grid(A=A, B=B, C=C)

A <- design$A
B <- design$B
C <- design$C
D <- A*B*C
y <- c(26,27,24,26,33,37,32,33)

car.lm <- lm(y ~ A*B*C*D)
summary(car.lm)

#quiz problem 8
R <- F <- c(-1,1)
design <- expand.grid(R=R, F=F)
R <- design$R
F <- design$F
P <- R*F
y <- c(1,0.75,2,1.25)

profit.lm <- lm(y ~ R*F*P)
summary(profit.lm)

#quiz problem 9
F <- T <- c(-1,1)
design <- expand.grid(F=F,T=T)
F <- design$F
T <- design$T
#S <- -T*F
S <- T*F
#y <- c(80, 93, 87, 93)
y <- c(85, 91, 78, 90)
#must list elements of y in order given by F,T,S

exp <- lm(y ~ F*T*S)
summary(exp)

F <- T <- S <- c(-1,1)
design <- expand.grid(F=F,T=T,S=S)
F <- design$F
T <- design$T
S <- design$S
y <- c(80,91,78,93,85,93,87,90)

full_exp <- lm(y ~ F*T*S)
summary(full_exp)

#quiz problem 10
A <- B <- C <- c(-1,1)
design <- expand.grid(A=A, B=B, C=C)

A <- design$A
B <- design$B
C <- design$C
D <- A*B
E <- A*C
F <- B*C
y <- c(325,330,326,300,272,265,300,275)

swim <- lm(y ~ A*B*C*D*E*F)
summary(swim)
paretoPlot(swim)