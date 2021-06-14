library(pid)

#a reusable function to model a 3 factor experiment with result 
#vector y
#y must be in standard order
mod_el3 <-function(y){
  A <- B <- C <- c(-1, 1)
  design <- expand.grid(A=A, B=B, C=C)
  A <- design$A
  B <- design$B
  C <- design$C
  lm(y ~ A * B * C)
}

#problem1
y <- c(14,16,14,16,17,21,15,22)
pizza <- mod_el3(y)
paretoPlot(pizza)
summary(pizza)

#a reusable function to model a 4 factor experiment with result 
#vector y
#y must be in standard order
mod_el4 <-function(y){
  A <- B <- C <- D <- c(-1, 1)
  design <- expand.grid(A=A, B=B, C=C, D=D)
  A <- design$A
  B <- design$B
  C <- design$C
  D <- design$D
  lm(y ~ A * B * C * D)
}

#problem4
y <- c(288,295,235,278,300,312,298,305,265,282,230,260,292,300,281,288)
golf <- mod_el4(y)
paretoPlot(golf)

#problem6
y <- c(39, 35, 40, 41, 40, 38, 41, 42)
run <- mod_el3(y)
paretoPlot(run)

A <- B <- C <- c(-1, 1)
design <- expand.grid(A=A, B=B, C=C)
design[9,] <- c(0,0,0)
A <- design$A
B <- design$B
C <- design$C

y <- c(y,40.5)
run2 <- lm(y ~ A * B * C)
summary(run2)

#problem7
A <- B <- C <- c(-1, 1)
design <- expand.grid(A=A, B=B, C=C)
design[9,] <- c(-2,-1,-1)
design[10,] <- c(0,1,1)
design[11,] <- c(0,-1,1)
A <- design$A
B <- design$B
C <- design$C

y <- c(450,492,390,408,432,450,318,312,354,318,420)
boil <- lm(y ~ A * B * C)
paretoPlot(boil)
summary(boil)