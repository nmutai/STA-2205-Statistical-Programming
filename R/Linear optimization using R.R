## ----setup,echo=FALSE,message=FALSE,cache=FALSE,include=TRUE,warning = FALSE----
# Its a good idea to start any rmarkdown document with a block like this one to set knit defaults, setup the bibliography, and so forth.
library(dplyr)
library(knitr)
library(ggplot2)
library(Hmisc)
library(psych)
library(inserttable)

# As can be seen below, the local chunk options overwrite the global settings.
setwd("C:/Users/ncher/Dropbox/TTU/Teaching/Jan_April_2023/My_lectures")


## ----echo=TRUE-----------------------
f <- function(x) 4 * (x[1] - 1)^2 + 7 * (x[2] - 3)^2 + 30
f
function(x) 4 * (x[1] - 1)^2 + 7 * (x[2] - 3)^2 + 30


## ----echo=TRUE-----------------------
c <- c(1, 1)


## ----echo=TRUE-----------------------
r <- optim(c, f)


## ----echo=TRUE-----------------------
r$convergence == 0


## ----echo=TRUE-----------------------
r$par


## ----echo=TRUE-----------------------
r$par


## ----echo=TRUE-----------------------
require(lpSolve)
objective.in <- c(25, 20)


## ----echo=TRUE-----------------------
const <- matrix(c(20, 12, 4, 4), nrow = 2, byrow = TRUE)
time_constraints <- (8 * 60)
resource_constraints <- 1800


## ----echo=TRUE-----------------------
rhs <- c(resource_constraints, time_constraints)
rhs
direction <- c("<=", "<=")


## ----echo=TRUE-----------------------
# lp(direction , objective, const.mat, const.dir, const.rhs)
optimum <- lp(direction = "max", objective.in, const, direction, rhs)
optimum


## ----echo=TRUE-----------------------
summary(optimum)


## ----echo=TRUE-----------------------
optimum$solution


## ----echo=TRUE-----------------------
optimum$objval


## ----echo=TRUE-----------------------
# install.packages("lpSolve")
library(lpSolve)


## ----echo=TRUE-----------------------
Objective.in <- c(25, 20)


## ----echo=TRUE-----------------------
Const.mat <- matrix(c(20, 12, 4, 4), nrow = 2, byrow = TRUE)


## ----echo=TRUE-----------------------
Time_constraint <- 8 * 60
Resouce_constraint <- 1800


## ----echo=TRUE-----------------------
Const.rhs <- c(Resouce_constraint, Time_constraint)


## ----echo=TRUE-----------------------
Const.dir <- c("<", "<=")


## ----echo=TRUE-----------------------
Optimum <- lp(direction = "max", Objective.in, Const.mat, Const.dir, Const.rhs)


## ----echo=TRUE-----------------------
# Load lpSolve
require(lpSolve)

## Set the coefficients of the decision variables -> C
C <- c(30, 40, 80)

# Create constraint martix B
A <- matrix(c(
  1, 1, -10,
  4, 3, -20,
  1, 0, -2,
  1, 1, 0
), nrow = 4, byrow = TRUE)

# Right hand side for the constraints
B <- c(500, 200, 100, 1000)

# Direction of the constraints
constranints_direction <- c("<=", "<=", "<=", ">=")

# Find the optimal solution
optimum <- lp(
  direction = "min",
  objective.in = C,
  const.mat = A,
  const.dir = constranints_direction,
  const.rhs = B,
  all.int = T
)

# Print status: 0 = success, 2 = no feasible solution
print(optimum$status)

# Display the optimum values for x_4p, x_3p and x_w
best_sol <- optimum$solution
names(best_sol) <- c("x_4p", "x_3p", "x_w")
print(best_sol)

# Check the value of objective function at optimal point
print(paste("Total cost: ", optimum$objval, sep = ""))

#################
#   Output      #
#################

# [1] 0
# x_4p x_3p  x_w
# 420  580  161

# "Total cost: 48680"

rm(optimum, constranints_direction, best_sol)

#-------------------------------------------------------------------------------
# Let's try to solve the problem again using lpSolveAPI

# Use lpSolveAPI
require(lpSolveAPI)

# Set 4 constraints and 3 decision variables
lprec <- make.lp(nrow = 4, ncol = 3)
# Set the type of problem we are trying to solve
lp.control(lprec, sense = "min")
# Set type of decision variables
set.type(lprec, 1:3, type = c("integer"))

# Set objective function coefficients vector C
set.objfn(lprec, C)

# Add constraints
add.constraint(lprec, A[1, ], "<=", B[1])
add.constraint(lprec, A[2, ], "<=", B[2])
add.constraint(lprec, A[3, ], "<=", B[3])
add.constraint(lprec, A[4, ], ">=", B[4])

# Display the LPsolve matrix
lprec

# Solve problem
solve(lprec)

# Get the decision variables values
get.variables(lprec)
# Get the value of the objective function
get.objective(lprec)

# Note that the default boundaries on the decision variable are c(0, 0, 0) and c(Inf, Inf, Inf)
get.bounds(lprec)

# Boundaries can be set with following function
# lpSolveAPI::set.bounds()

#################
#   Output      #
#################

# [1] 420 580 161
# [1] 48680
