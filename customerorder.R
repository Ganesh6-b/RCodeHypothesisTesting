setwd("F://R//Rfiles")
customer <- read.csv("Costomer+OrderForm.csv")
View(customer)
(customer$Phillippines)
table(customer$Indonesia)
table(customer$Malta)
table(customer$India)

stack(customer)
