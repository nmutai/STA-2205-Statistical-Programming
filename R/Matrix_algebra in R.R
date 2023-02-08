## ----setup,echo=FALSE,message=FALSE,cache=FALSE,include=TRUE,warning = FALSE----
# Its a good idea to start any rmarkdown document with a block like this one to set knit defaults, setup the bibliography, and so forth.
library(mosaic)
library(mosaicCalc)
library(manipulate)

# As can be seen below, the local chunk options overwrite the global settings.
setwd("C:/Users/ncher/Dropbox/TTU/Teaching/Jan_April_2023/My_lectures")


## ----------------------------
A <- matrix(1:9, nrow = 3, ncol = 3)
A


## ----------------------------
# ?matrix


## ----------------------------
A <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
A


## ----------------------------
A <- matrix(1:9, nrow = 3)
A

B <- matrix(1:9, ncol = 3)
B


## ----------------------------
class(A)


## ----------------------------
dim(A)
nrow(A)
ncol(A)


## ----------------------------
is.matrix(A)


## ----------------------------
a <- c(1,2,3,4)
b <- c(10,11,12,13)
c <- c(20,30,40,50)


## ----------------------------
e <- rbind(a, b, c)
e


## ----------------------------
class(e)


## ----------------------------
e <- rbind(c, a, b)
e


## ----------------------------
e <- rbind(a, b, c, a)
e


## ----------------------------
e <- rbind(c(1,2,3), c(7,8,9), c(2,3,4))
e


## ----------------------------
e <- cbind(a, b, c)
e


## ----------------------------
e <- matrix(c(1,2,3,4,5,6), nrow = 2, 
            dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))
e


## ----------------------------
e <- matrix(c(1,2,3,4,5,6), nrow = 2)
rownames(e) <- c("row1", "row2")
colnames(e) <- c("col1", "col2", "col3")
e


## ----------------------------
rownames(e) <- NULL
colnames(e) <- NULL
e


## ----------------------------
e <- matrix(1:16, nrow = 4, byrow = TRUE)
e


## ----------------------------
e[3,2]


## ----------------------------
e[4,1]


## ----------------------------
s <- 10
s*A


## ----------------------------
A%*%B


## ----------------------------
A + B
A - B


## ----------------------------
t(A)
t(B)


## ----------------------------
A <- matrix(c(2,4,6,-1,2,-1,10,11,12), ncol = 3, nrow = 3)
solve(A)


## ----------------------------
det(A)


## ----------------------------
rbind(A,B)


## ----------------------------
cbind(A,B)


## ----------------------------
colSums(A)
rowSums(A)


## ----------------------------
colMeans(A)
rowMeans(A)


## ----------------------------
C <- diag(3)
C


## ----------------------------
U <- matrix(1, 3, 2)
U


## ----------------------------
# install.packages("matlib")
library(matlib)


## ----------------------------
A <- matrix(c(-1, 2, -1, 2), 2, 2)
b <- c(-2,1)
showEqn(A, b)
plotEqn(A,b)
Solve(A, b, fractions = TRUE)


## ----------------------------
A <- matrix(c(4,-3,1,2,1,3,-1,2,-5), nrow = 3, ncol = 3)
b <- c(-10,0,17)
showEqn(A,b)
Solve(A, b, fractions = TRUE)
plotEqn3d(A,b)


## ----------------------------
A <- matrix(c(1,-2,4,-5,2,3,6,2,4), nrow = 3, ncol = 3)
b <- c(23,45,32)
# plotEqn3d (A,b)
Solve(A, b, fractions = TRUE)


## ----------------------------
A <- matrix(c(1,2,3, -1, 2, 1), 3, 2)
b <- c(2,1,3)
showEqn(A, b)
plotEqn(A,b)
Solve(A, b, fractions=TRUE) 


## ----------------------------
A <- matrix(10:25, nrow = 4)
A


## ----------------------------

apply(A, 1, sum)
apply(A, 2, sum)


## ----------------------------
apply(A, 1, prod)
apply(A, 2, prod)


## ----------------------------
apply(A, 1, mean)
apply(A, 2, mean)


## ----------------------------
apply(A, 1, sd)
apply(A, 2, sd)


## ----------------------------
apply(A, 1, cumsum)


## ----------------------------
B <- matrix(apply(A, 1, cumsum), nrow = 4, byrow = TRUE)
B


## ----------------------------
apply(A, 2, cumsum)

