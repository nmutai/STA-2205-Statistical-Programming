## ----setup,echo=FALSE,message=FALSE,cache=FALSE,include=TRUE,warning = FALSE----
# Its a good idea to start any rmarkdown document with a block like this one to set knit defaults, setup the bibliography, and so forth.
options(warn = -1)
library(mosaic)
library(mosaicCalc)
library(manipulate)

# As can be seen below, the local chunk options overwrite the global settings.
setwd("C:/Users/ncher/Dropbox/TTU/Teaching/Jan_April_2023/My_lectures/Statistical programming")


## ---- echo=TRUE----------------------
vector <- c(3, 5, 2, 3, 1, 4)
print(min(vector))
print(mean(vector))
print(median(vector))
print(sum(vector))
print(range(vector))
print(str(vector))
print(length(vector))
print(sort(vector, decreasing=TRUE))
print(exists('vector'))  ## note the quotation marks


## ---- echo=TRUE----------------------
circumference <- function(r){
    2*pi*r
}
print(circumference(2))


## ----echo=TRUE-----------------------
hello_world <- function(){
    'Hello, World!'
}
print(hello_world())


## ---- echo=TRUE----------------------
circumference <- function(r=1){
    2*pi*r
}
print(circumference())
print(circumference(2))


## ------------------------------------
sum_two_nums <- function(x, y){
    x + y
}
print(sum_two_nums(1, 2))


## ----echo=TRUE-----------------------
sum_two_nums <- function(x, y) x + y
print(sum_two_nums(1, 2))


## ----echo=TRUE-----------------------
mean_median <- function(vector){
    mean <- mean(vector)
    median <- median(vector)
    return(c(mean, median))
}
print(mean_median(c(1, 1, 1, 2, 3)))


## ----echo=TRUE-----------------------
subtract_two_nums <- function(x, y){
    x - y
}
print(subtract_two_nums(3, 1))


## ---- echo=TRUE----------------------
subtract_two_nums <- function(x, y){
    x - y
}
print(subtract_two_nums(x=3, y=1))
print(subtract_two_nums(y=1, x=3))


## ----echo=TRUE-----------------------
calculate_calories_women <- function(weight, height, age){
    (10 * weight) + (6.25 * height) - (5 * age) - 161
}


## ---- echo=TRUE----------------------
print(calculate_calories_women(age=30, 60, 165))


## ----echo=TRUE-----------------------
calculate_calories_women <- function(weight, height, age=30){
    (10 * weight) + (6.25 * height) - (5 * age) - 161
}
print(calculate_calories_women(60, 165))


## ---- echo=TRUE----------------------
mean_median <- function(vector){
    mean <- mean(vector)
    median <- median(vector)
    return(c(mean, median))
}


## ----echo=TRUE-----------------------
radius_from_diameter <- function(d){
    d/2
    circumference <- function(r){
    2*pi*r
}

print(circumference(radius_from_diameter(4)))
}


## ---- echo=TRUE----------------------
sum_circle_ares <- function(r1, r2, r3){
    circle_area <- function(r){
        pi*r^2
    }
    circle_area(r1) + circle_area(r2) + circle_area(r3)
}

print(sum_circle_ares(1, 2, 3))


## ---- echo=TRUE----------------------
# print(circle_area(10))


## ----echo=TRUE-----------------------
new.function <- function(a, b) {
   print(a^2)
   print(a)
   print(b)
}


## ---- echo=TRUE----------------------
# new.function(6)

