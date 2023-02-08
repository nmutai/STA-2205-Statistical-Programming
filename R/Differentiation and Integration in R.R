## ----setup,echo=FALSE,message=FALSE,cache=FALSE,include=TRUE,warning = FALSE----
# Its a good idea to start any rmarkdown document with a block like this one to set knit defaults, setup the bibliography, and so forth.
library(mosaic)
library(mosaicCalc)
library(manipulate)


# As can be seen below, the local chunk options overwrite the global settings.
setwd("C:/Users/ncher/Dropbox/TTU/Teaching/Jan_April_2023/My_lectures")


## ----echo=TRUE---------------
f <- makeFun(m * x + b ~ x, m = 3.5, b = 10)
f
# when x = 2
f(x = 2)

g <- makeFun(A * x * cos(pi * x * y) ~ x + y, A = 3)
g

function(x, y, A = 3) {
  A * x * cos(pi * x * y)
}

# when x = 1 and y = 2
g(x = 1, y = 2)


## ----echo=TRUE---------------
plotFun(A * exp(k * t) * sin(2 * pi * t / P) ~ t + k, t.lim = range(0, 10), 
        k.lim = range(-0.3, 0), A = 10, P = 4)


## ----echo=TRUE---------------
plotFun(A * exp(k * t) * sin(2 * pi * t / P) ~ t + k, t.lim = range(0, 10), 
        k.lim = range(-0.3, 0), A = 10, P = 4, surface = TRUE)


## ----echo=TRUE---------------
plotFun(dt(t, df) ~ t + df, t.lim = range(-3, 3), df.lim = range(1, 10))


## ----echo=TRUE---------------
D(sin(x) ~ x)
function(x) {
  cos(x)
}


## ----echo=TRUE---------------
D(A * x^2 * sin(y) ~ x)
function(x, A, y) {
  A * (2 * x) * sin(y)
}


## ----echo=TRUE---------------
D(A * x^2 * sin(y) ~ x + y)
function(x, y, A) {
  A * (2 * x) * cos(y)
}


## ----echo=TRUE---------------
findZeros(sin(t) ~ t, t.lim = range(-5, 1))


## ----echo=TRUE---------------
findZeros(sin(t) ~ t, nearest = 5, near = 10)


## ----echo=TRUE---------------
findZeros(sin(t) ~ t, near = 0, within = 8)


## ----echo=TRUE---------------
solve(4 * sin(3 * x) == 2 ~ x, near = 0, within = 1)


## ----echo=TRUE---------------
findZeros(x * y^2 - 8 ~ x & y, sin(x * y) - 0.5 ~ x & y)


## ----echo=TRUE---------------
findZeros(x * y^2 - 8 ~ x & y, sin(x * y) - 0.5 ~ x & y,
  near = c(x = 20, y = 0),
  within = c(x = 5, y = 1)
)


## ----echo=TRUE---------------
findZeros(x^2 + y^2 + z^2 - 10 ~ x & y & z, near = 0, within = 4)


## ----echo=TRUE---------------
s1 <- findZeros(x^2 + y^2 + z^2 - 10 ~ x & y & z, near = 0, within = 10, 
                nearest = 1000)
cloud(z ~ x + y, data = s1, pch = 19)


## ----echo=TRUE---------------
D <- function(f, delta = .000001) {
  function(x) {
    (f(x + delta) - f(x - delta)) / (2 * delta)
  }
}
f <- function(x) {
  x^2 + 2 * x
}
plot(f, 0, 10)


## ----echo=TRUE---------------
f <- function(x) {
  x^2 + 2 * x
}
plot(f, 0, 10)
plot(D(f), 0, 10)


## ----echo=TRUE---------------
plot(D(D(f)), 0, 10)


## ----echo=TRUE---------------
F <- antiD(a * x^2 ~ x, a = 1)
F
function(x, a = 1, C = 0) {
  a * 1 / (3) * x^3 + C
}


## ----echo=TRUE---------------
F(x = 3) - F(x = 1) # Should be 9 - 1/3


## ----echo=TRUE---------------
antiD(1 / (a * x + b) ~ x)
function(x, a, b, C = 0) {
  1 * 1 / (a) * log(((a * x + b))) + C
}


## ----echo=TRUE---------------
P <- antiD(exp(x^2) ~ x)
P
function(x, C = 0) {
  numerical.integration(.newf, .wrt, as.list(match.call())[-1],
    formals(), from,
    ciName = intC, .tol
  )
}


## ----echo=TRUE---------------
F <- antiD(x * dexp(x, rate = rate) ~ x)
F(x = Inf, rate = 10) - F(x = 0, rate = 10)
F(x = Inf, rate = 100) - F(x = 0, rate = 100)


## ----echo=TRUE---------------
one <- makeFun(1 ~ x + y)
by.x <- antiD(one(x = x, y = y) ~ x)
by.xy <- antiD(by.x(x = sqrt(1 - y^2), y = y) ~ y)
# by.xy(y = 1)-by.xy(y = -1)


## ----echo=TRUE---------------
# intergrand f
f <- function(r, x) x * exp(-r) # order of arguments reversed
# integral
h <- function(x) integrate(f, lower = 0, upper = Inf, x = x)$value
g <- Vectorize(h)
x <- seq(-2, 4, .1)
plot(x, g(x), xlim = c(-2, 4), xlab = "x", ylab = "y", col = "red")

