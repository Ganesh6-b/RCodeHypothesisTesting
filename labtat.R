setwd("F://R//Rfiles")
labtat<- read.csv("LabTAT (3).csv")
View(labtat)
attach(labtat)

#normality test
shapiro.test(Laboratory.1) #normal 
shapiro.test(Laboratory.2) #normal
shapiro.test(Laboratory.3) #normal
shapiro.test(Laboratory.4) #normal

stackedlabtat <- stack(labtat)
#VARIANCE TEST
library(car)

leveneTest(stackedlabtat$values~stackedlabtat$ind, center = "median")
?leveneTest

#there is no equal variance
install.packages("ANOM")
library(ANOM)
?ANOM
ANOM(Laboratory.1, Laboratory.2)
