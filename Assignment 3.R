setwd("C:/St thomas/Fall 2017/631/Assignments/Assignment 3")
load("kobe.RData")
head(kobe)
kobe$basket[1: 9]
kobe_streak <- calc_streak(kobe$basket) 
barplot(table(kobe_streak))
summary(kobe$basket)
summary(kobe_streak)
mean(kobe_streak)
mosaicplot(table(kobe_streak))
?summary
outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
table(sim_fair_coin)
sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
table(sim_unfair_coin)
outcomes <- c("H", "M")
sim_basket <- sample(outcomes, size = 1, replace = TRUE)
sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
kobe$basket
sim_basket
sim_streak <- calc_streak(sim_basket) 
barplot(table(sim_streak))
barplot(table(kobe_streak))
