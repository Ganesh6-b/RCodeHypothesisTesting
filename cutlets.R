setwd("F://R//Rfiles")
cutlets <- read.csv("Cutlets.csv")
View(cutlets)
attach(cutlets)
#normality test

shapiro.test(Unit.A)
shapiro.test(Unit.B)
#both follows normality

var.test(Unit.A, Unit.B)

#variance are equal..
#2 sample T test

t.test(Unit.A, Unit.B, alternative="two.sided", conf.level = 0.95, correct = TRUE)

#BOTH ARE GIVE SAME SIGNIFICANCE..... THERE IS NO DIFFERENCE BETWEEN THEIR SIGNIFICANCE