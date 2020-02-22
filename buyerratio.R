setwd("F://R//Rfiles")
buyer <- read.csv("BuyerRatio.csv")
View(buyer)
attach(buyer)
buyers <- stack(buyer)
View(buyers)
#normality test
chisq.test(table(buyers$values, buyers$ind))

#sales of all four countries are same... no action to be taken
