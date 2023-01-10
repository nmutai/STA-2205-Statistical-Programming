## ----setup, include=FALSE------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,fig.align = "center", warning=FALSE,message = FALSE)


## ------------------------------------------------------------------------------------------------------
library(tidyverse)


## ------------------------------------------------------------------------------------------------------
3 + 4

3 - 4

3 * 4

12/7 # returns division 

12%%7 # returns remainder of division

12%/% 7 # returns quotient  



## ------------------------------------------------------------------------------------------------------
a <- 3 # 3 is assigned to a 

a

b <- 4 # 4 is assigned to a

b

Ganesh <-  3+4 

Ganesh

is.male <- TRUE

is.male


## ------------------------------------------------------------------------------------------------------
plot(iris)


## ------------------------------------------------------------------------------------------------------
plot(x=iris$Sepal.Length,y=iris$Sepal.Width, col="red", main="Scatter plot")


## ------------------------------------------------------------------------------------------------------
# define the function :
SimpleInterest <- function(p,r,t){
  int= p*r*t/100
  return(int)
}

SimpleInterest(p=12000,r=3,t=4)


## ------------------------------------------------------------------------------------------------------
library(ggplot2)

ggplot(iris,mapping=aes(x=Sepal.Length,y=Sepal.Width,color=Species))+
  geom_point()


## ------------------------------------------------------------------------------------------------------
a <-  25

typeof(a)

b <-  23L

typeof(b)


## ------------------------------------------------------------------------------------------------------
a <-  "Ramesh"
typeof(a)

b <-  " R programming language"

typeof(b)


## ------------------------------------------------------------------------------------------------------
is.male <-  c(TRUE,FALSE,FALSE, TRUE)
is.male
typeof(is.male)

 d <-  3>4
 
 d
 
## ------------------------------------------------------------------------------------------------------
e <-  20:30 > 25
e 
typeof(e)


## ------------------------------------------------------------------------------------------------------
r  <-  1:100 
typeof(r)
length(r)


## ------------------------------------------------------------------------------------------------------
grade <- c( "I","II","III","IV")
typeof(grade)
length(grade)


## ------------------------------------------------------------------------------------------------------
gramPositive <- c(TRUE,TRUE,TRUE,FALSE,FALSE)
typeof(gramPositive)
length(gramPositive)


## ------------------------------------------------------------------------------------------------------
male <- c(TRUE, "TRUE", 1, 0)

male

typeof(male)


## ------------------------------------------------------------------------------------------------------
age <- c( 25, 27,31,41)

age

friends <- c( "Ganesh", "Ramesh", "Anita","Rose")
friends

is.male <- c(TRUE, TRUE, FALSE, FALSE)
is.male



## ------------------------------------------------------------------------------------------------------
mileage <-  25:37
mileage

height <-  57:65
height

cost <-  54:59
cost


## ------------------------------------------------------------------------------------------------------
seq1 <- seq(25, 50, by =5)
seq1


## ------------------------------------------------------------------------------------------------------
seq2 <- seq(25, 50, length.out =5)
seq2


## ------------------------------------------------------------------------------------------------------
seq3 <- sequence(20)
seq3

seq5 <- sequence(9)
seq5


## ------------------------------------------------------------------------------------------------------
rep1 <-  rep(5, times=3)
rep1



## ------------------------------------------------------------------------------------------------------
treatment <-  rep(c("t1","t2"), by =5)
treatment


## ------------------------------------------------------------------------------------------------------
treatment2 <-  rep(c("t1","t2"), each =5)
treatment2


## ------------------------------------------------------------------------------------------------------
norm1 <-  rnorm(n=20,mean=3, sd=2)
norm1

hist(norm1) # plots histogram


## ------------------------------------------------------------------------------------------------------
binom1 <- rbinom(n=5,size=3,prob=0.5)
binom1
hist(binom1)


## ------------------------------------------------------------------------------------------------------
uniform1 <- runif(20,min=10,max=30)
uniform1
hist(uniform1)


## ------------------------------------------------------------------------------------------------------
gamma1 <- rgamma(20,shape=3)
gamma1
hist(gamma1)


## ------------------------------------------------------------------------------------------------------
pois1 <- rpois(200,0.03)
pois1
hist(pois1)


## ------------------------------------------------------------------------------------------------------
age <- c(25,35,34,32,21)
persons <- c("Ganesh","Ramesh","Suvarna","Ummed","Rose")

names(age) <- persons

age


## ------------------------------------------------------------------------------------------------------
age["Ramesh"]

age[c("Ramesh","Rose")]



## ------------------------------------------------------------------------------------------------------
age[2]

age[c(2,5)]


## ------------------------------------------------------------------------------------------------------
age[age>33]


## ------------------------------------------------------------------------------------------------------
is.male <- c(TRUE, TRUE,FALSE,TRUE, FALSE)

ageofMales <- age[is.male]
ageofMales


## ------------------------------------------------------------------------------------------------------
height <- c(1.35,1.56,1.76,1.83,1.52)
weight <- c(65,67,54,92,67)
persons <- c("Ganesh","Ramesh","Suvarna","Ummed","Rose")

BMI <- weight/height^2
BMI

obese <- BMI >=25
obese

is.obese <- persons[obese]

is.obese

not.obese <- persons[!obese]

not.obese


## ------------------------------------------------------------------------------------------------------
seq1 <- seq(0,100,by=10)
seq1

seq1.10 <- 10*seq1
seq1.10

sqr.seq1 <- seq1.10^2
sqr.seq1


## ------------------------------------------------------------------------------------------------------
mat1 <- matrix( 1:20, nrow=5, byrow=TRUE)
mat1


## ------------------------------------------------------------------------------------------------------
mat2 <- matrix(1:20,nrow=5,byrow=FALSE)
mat2


## ------------------------------------------------------------------------------------------------------
Jan <- c(25,27,28,23)
Feb <- c(31,32,31,33)
Mar <- c(32,32,34,34)
Apr <- c(33,33,34,35)
May <- c(36,37,37,36)

temp <- rbind(Jan,Feb,Mar,Apr,May) 
temp

temp_t <- cbind(Jan,Feb,Mar,Apr,May) 
temp_t

## ------------------------------------------------------------------------------------------------------
colnames(mat1) <- c("a","b","c","d")
mat1

rownames(mat1) <- c("E","F","G","H","I")
mat1

## ------------------------------------------------------------------------------------------------------
rownames(mat1)
colnames(mat1)

## ------------------------------------------------------------------------------------------------------
rownames(mat1) <- NULL
mat1

colnames(mat1) <- NULL

## ------------------------------------------------------------------------------------------------------
mat1[1,] # first row will be given, column index is empty to select all columns

mat1[c(3,2),] # third and second row will be selected


## ------------------------------------------------------------------------------------------------------
mat1[,2]

mat1[,3:4]

## ------------------------------------------------------------------------------------------------------
mat1[3,2] # value form 3rd row and 2nd column

mat1[2:3, c(2,4)]


## ------------------------------------------------------------------------------------------------------

colnames(mat1) <- c("a","b","c","d")
mat1

rownames(mat1) <- c("E","F","G","H","I")
mat1


## ------------------------------------------------------------------------------------------------------
mat1["E",]

mat1[c("E","H"),]


## ------------------------------------------------------------------------------------------------------
mat1[,"a"]

mat1[, c("a","c","d")]


## ------------------------------------------------------------------------------------------------------
mat1["E","a"]

mat1[c("F","G"), c("a","c","d")]


## ------------------------------------------------------------------------------------------------------
heatmap(mat1)


## ------------------------------------------------------------------------------------------------------
mat <- as.matrix(iris[,1:4])
rownames(mat) <- iris[,5]
heatmap(mat)


## ------------------------------------------------------------------------------------------------------
dim(mat)

nrow(mat)

ncol(mat)

is.matrix(mat)

class(mat)

rownames(mat)
colnames(mat)


## ------------------------------------------------------------------------------------------------------
mat1 +5

mat1-5


mat1*5

mat1 /5

mat1 %% 5

mat1 %/% 5

mat1+mat2
mat1-mat2
mat1*mat2


## ------------------------------------------------------------------------------------------------------
flower <- c("hibiscus","hibiscus","rose","periwinkle")
no <- c(25,18,23,28)
color <- c("red","white","orange","pink")

df <- data.frame(flower,no,color)

df


## ------------------------------------------------------------------------------------------------------
avgFlowers <- c(12,35,8,47)

df <- cbind(df,avgFlowers)

df



## ------------------------------------------------------------------------------------------------------
flower <- "rose"
no <- 18
color <- "yellow"
avgFlowers <- 27
df2 <- data.frame(flower,no,color,avgFlowers)

df3 <- rbind(df,df2)
df3


## ------------------------------------------------------------------------------------------------------
df3$investigator <- c("Ganesh","Ramesh","Suvarna","Ummed","Rose")
df3


## ------------------------------------------------------------------------------------------------------
df3$avgFlowers

df3$color

df3$investigator



## ------------------------------------------------------------------------------------------------------
row.names(df3)


## ------------------------------------------------------------------------------------------------------
row.names(df3) <- c("a","b","c","d","e")
df3
row.names(df3)


## ------------------------------------------------------------------------------------------------------
row.names(df3) <- NULL
df3
row.names(df3)


## ------------------------------------------------------------------------------------------------------
dim(df3)
nrow(df3)
ncol(df3)
rownames(df3)
colnames(df3)
names(df3) # synonym of colnames


## ------------------------------------------------------------------------------------------------------
head(iris)

tail(iris)

head(iris,10) # to show 10 rows

tail(iris,10) # to show 10 rows



## ------------------------------------------------------------------------------------------------------
summary(iris)
summary(df3)


## ------------------------------------------------------------------------------------------------------
str(iris)


## ------------------------------------------------------------------------------------------------------
iris[1,] # first row

iris[,1] # firts column


## ------------------------------------------------------------------------------------------------------
iris$Sepal.Length


## ------------------------------------------------------------------------------------------------------
iris[3:4,1:2]

iris[c(1,5,10),c(1,5)]


## ------------------------------------------------------------------------------------------------------
iris[iris$Sepal.Length > mean(iris$Sepal.Length),] 


## ------------------------------------------------------------------------------------------------------
iris[iris$Sepal.Length > mean(iris$Sepal.Length) & iris$Species == "setosa",] 


## ------------------------------------------------------------------------------------------------------
iris[iris$Species != "virginica" & iris$Sepal.Length > mean(iris$Sepal.Length),]


## ------------------------------------------------------------------------------------------------------
samp <- sample ( 1: nrow(iris), 10)
samp


## ------------------------------------------------------------------------------------------------------
iris[samp,]


## ------------------------------------------------------------------------------------------------------
dim(iris[-samp,])


## ------------------------------------------------------------------------------------------------------
subset(iris,Sepal.Length< mean(Sepal.Length))


## ------------------------------------------------------------------------------------------------------
subset(iris,Sepal.Length> mean(Sepal.Length),select=Species)


## ------------------------------------------------------------------------------------------------------
lst_1 <- list("Ganesh",temp,flower, df3,mat2)
lst_1


## ------------------------------------------------------------------------------------------------------
write.table(df3,"flowerinfo.txt")


## ------------------------------------------------------------------------------------------------------
write.table(df3,"flowerinfo_comma.txt",sep=",")


## ------------------------------------------------------------------------------------------------------
write.table(df3,"flowerinfo_tab.txt",sep="\t")


## ------------------------------------------------------------------------------------------------------
write.csv(df3,"flowerinfo_tab.csv")


## ------------------------------------------------------------------------------------------------------
#install.packages("xlsx") 


## ------------------------------------------------------------------------------------------------------
library(xlsx)


## ------------------------------------------------------------------------------------------------------
write.xlsx(df3,"flowerinfo_tab.xls")

## ------------------------------------------------------------------------------------------------------
write.xlsx(df3,"flowerinfo_tab.xls",row.names = FALSE)


## ------------------------------------------------------------------------------------------------------
write.xlsx(df3,"flowerinfo_tab.xls",row.names = FALSE,sheetName = "FlowerInfo")


## ------------------------------------------------------------------------------------------------------
write.xlsx(iris,"flowerinfo_tab.xls",row.names = FALSE,sheetName = "Iris Data set", append=TRUE)


## ------------------------------------------------------------------------------------------------------
#install.packages("readstata13")
 df =read.csv("polyphenolassay.csv")
library(readstata13)
save.dta13(df,"PPassay.dta")


## ------------------------------------------------------------------------------------------------------
pg <- read.table("PlantGrowth.txt",sep=",")
head(pg)


## ------------------------------------------------------------------------------------------------------
pg1 <- read.table("PlantGrowth.txt",sep=",",header = TRUE)
head(pg1)


## ------------------------------------------------------------------------------------------------------
df_csv <- read.csv("flowerinfo_tab.csv")
head(df_csv)


## ------------------------------------------------------------------------------------------------------
library(readxl)
df_xls <- read_xls("flowerinfo_tab.xls")


## ------------------------------------------------------------------------------------------------------
library(readstata13)
df_dta <- read.dta13("PPassay.dta")
head(df_dta)


## ------------------------------------------------------------------------------------------------------
library(mice)

md.pattern(airquality)


## ------------------------------------------------------------------------------------------------------
imp_data <- mice(airquality)


## ------------------------------------------------------------------------------------------------------
Na_rmd_airquality <- complete(imp_data)


## ------------------------------------------------------------------------------------------------------
md.pattern(Na_rmd_airquality)


## ------------------------------------------------------------------------------------------------------
barplot <- iris %>% 
  select(Sepal.Length,Species) %>% 
  group_by(Species) %>% summarise(mean_sepal.Length =mean(Sepal.Length)) %>% ggplot(aes(Species,mean_sepal.Length,fill=Species))+
  geom_bar(stat="identity")+
  theme_bw()+
  theme(legend.position = "none")

barplot
  
  
## ------------------------------------------------------------------------------------------------------
library(dplyr)

df_sl <- iris %>% select(Species,Sepal.Length)
  
boxplot(Sepal.Length~Species,iris)

dim(df_sl)

head(df_sl)




## ------------------------------------------------------------------------------------------------------
iris_setosa <- iris %>% filter(Species=="setosa" & Sepal.Length >=5 & Sepal.Length <=5.4)

dim(iris_setosa)
head(iris_setosa)

boxplot(Sepal.Length~Species,iris_setosa)



## ------------------------------------------------------------------------------------------------------
iris_ratios <- iris %>% mutate(Sepal.ratio = Sepal.Length/Sepal.Width, Petal.ratio = Petal.Length/Petal.Width)

head(iris_ratios)


## ------------------------------------------------------------------------------------------------------
head(women)

women_metric_bmi <- women %>% mutate(height_mtrs = 0.0254*height, weight_kg=0.453592*weight) %>% mutate(bmi=weight_kg/height_mtrs^2)

head(women_metric_bmi)


## ------------------------------------------------------------------------------------------------------
women_metric_bmi_2 <- women %>% transmute(height_mtrs = 0.0254*height, weight_kg=0.453592*weight) %>% mutate(bmi=weight_kg/height_mtrs^2)

head(women_metric_bmi_2)


## ------------------------------------------------------------------------------------------------------
women_arranged_asc <- women %>% arrange(height) # ASCENDING
head(women_arranged_asc)


## ------------------------------------------------------------------------------------------------------
women_arranged_dsc <- women %>% arrange(-height) # ASCENDING
head(women_arranged_dsc)


## ------------------------------------------------------------------------------------------------------
iris_summary <- iris %>% group_by(Species) %>% summarise(mean_sepal.Length=mean(Sepal.Length),mean_Sepal.Width=mean(Sepal.Width),mean_Petal.Length=mean(Petal.Length),mean_Petal.Width=mean(Petal.Width))

iris_summary


## ------------------------------------------------------------------------------------------------------

library(tidyr)
iris_long <- iris %>% pivot_longer(cols=1:4, names_to="Flower_part", values_to="Flower_part_length")

head(iris_long)

summary(iris_long)

str(iris_long)


## ------------------------------------------------------------------------------------------------------
mod_anova= aov(Flower_part_length~.,iris_long)
summary(mod_anova)


## ------------------------------------------------------------------------------------------------------
library(GGally)

ggpairs(iris,mapping=aes(color=Species))




## ------------------------------------------------------------------------------------------------------
head(iris)
str(iris)
summary(iris)


## ------------------------------------------------------------------------------------------------------
library(ggplot2) # tidyverse has already loaded this libarary. But many a times you mey not require all tidyverse packages.



## ------------------------------------------------------------------------------------------------------
ggplot(iris)


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length))


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length))+
  geom_histogram()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_histogram()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_histogram(color="white")


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_histogram(color="white")+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="histogram", caption="data by Edger Anderson",x=" Sepal Length in mm", y= " Frequency")


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_histogram(color="white")+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Histogram", caption="data by Edger Anderson",x=" Sepal Length in mm", y= " Frequency")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_density(color="white")+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Density plot", caption="data by Edger Anderson",x=" Sepal Length in mm", y= " Frequency")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Length,fill=Species))+
  geom_density(color="white", alpha=0.5)+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Density plot", caption="data by Edger Anderson",x=" Sepal Length in mm", y= " Frequency")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Species, y=Sepal.Length,fill=Species))+
  geom_boxplot(color="white", alpha=0.5)+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Boxplot", caption="data by Edger Anderson")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Species, y=Sepal.Length,fill=Species))+
  geom_boxplot( alpha=0.5)+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Boxplot", caption="data by Edger Anderson")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Species, y=Sepal.Length,fill=Species))+
  geom_boxplot( alpha=0.5,notch = TRUE)+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="Boxplot", caption="data by Edger Anderson")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Species, y=Sepal.Length,fill=Species))+
  geom_violin( alpha=0.5)+
  labs(title=" Destribution of Sepal Length in iris flowers", subtitle="violin", caption="data by Edger Anderson")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Width, y=Sepal.Length,color=Species))+
  geom_point()+
  labs(title=" Correaltion of sepal width and Sepal Length in iris flowers", subtitle="scatter plot", caption="data by Edger Anderson")+
  theme_bw()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Width, y=Sepal.Length,color=Species))+
  geom_point()+
  labs(title=" Correaltion of sepal width and Sepal Length in iris flowers", subtitle="scatter plot", caption="data by Edger Anderson")+
  theme_bw()+
  geom_smooth()


## ------------------------------------------------------------------------------------------------------
ggplot(iris,mapping=aes(x=Sepal.Width, y=Sepal.Length,color=Species))+
  geom_point()+
  labs(title=" Correaltion of sepal width and Sepal Length in iris flowers", subtitle="scatter plot", caption="data by Edger Anderson")+
  theme_bw()+
  geom_smooth(method ="lm")


## ------------------------------------------------------------------------------------------------------
library(dplyr)
library(tidyr)
iris_summary <- iris %>% 
  pivot_longer(cols=1:4,names_to = "flowerPart",values_to = "value") %>% 
  group_by(Species,flowerPart) %>% 
  summarise(meanLength=mean(value),sdLength=sd(value)) 


## ------------------------------------------------------------------------------------------------------
ggplot(iris_summary, aes(Species,meanLength))+
  geom_bar(stat="identity")


## ------------------------------------------------------------------------------------------------------
ggplot(iris_summary, aes(Species,meanLength,fill=flowerPart))+
  geom_bar(stat="identity")



## ------------------------------------------------------------------------------------------------------
ggplot(iris_summary, aes(Species,meanLength,fill=flowerPart))+
  geom_bar(stat="identity", position="dodge")



## ------------------------------------------------------------------------------------------------------
ggplot(iris_summary, aes(Species,meanLength,fill=flowerPart))+
  geom_bar(stat="identity", position="dodge")+
  theme_bw()



## ------------------------------------------------------------------------------------------------------

library(ggsci)
iris_bars <- ggplot(iris_summary,aes(reorder(Species,meanLength),meanLength,fill=flowerPart,label=meanLength))+
  geom_bar(stat="identity",position = "dodge")+
  geom_errorbar(aes(ymin=meanLength-sdLength,ymax=meanLength+sdLength),width=0.2,position=position_dodge(width=0.9))+
  geom_text(vjust=-3,position=position_dodge(0.9),size=3)+
  labs(x="Species",y="Length in cm", fill= "Flower Organ")+
  theme_bw()+
  theme(legend.position = "bottom")+
  guides(fill=guide_legend(ncol=2))+
  scale_fill_igv()+
  ylim(c(0,7.5))
  
 
  
iris_bars


## ------------------------------------------------------------------------------------------------------
model= lm(weight~height,women)


## ------------------------------------------------------------------------------------------------------
summary(model)


## ------------------------------------------------------------------------------------------------------
newdata= data.frame(height=c(57, 63, 69))

newdata$weight= predict(model, newdata)
newdata


## ------------------------------------------------------------------------------------------------------
plot(model)

