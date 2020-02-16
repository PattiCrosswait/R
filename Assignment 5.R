getwd()

#SET NEW WORKING DIRECTORY
setwd("C:/St thomas/Fall 2017/631-Data Analysis/Assignments/Assignment 5")

load("ames-1.RData")
#LOOK AT DATA IN ames
ames-1

#SET VARIABLES
population <- ames$Gr.Liv.Area
samp <- sample(population, 60)

sample_mean <- mean(samp)

#SAMPLE STANDARD ERROR
se <- sd(samp)/sqrt(60)
#95% CONFIDENCE INTERVAL
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)

#MEAN OF THE POPULATION
mean(population)

#VECTORS FOR SAMPLE MEAN VALUES AND SAMPLE STANDARD DEVIATION
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

for(i in 1:50){
  samp <- sample(population, n)           # obtain a sample of size n = 60 from the population
  samp_mean[i] <- mean(samp)           # save sample mean in ith element of samp_mean
  samp_sd[i] <- sd(samp)                     # save sample sd in ith element of samp_sd
}

lower <- samp_mean - 1.96 * samp_sd/sqrt(n)
upper <- samp_mean + 1.96 * samp_sd/sqrt(n)

c(lower[1], upper[1])

plot_ci(lower, upper, mean(population))

#SAMPLE STANDARD ERROR
n <- 50
se <- sd(samp)/sqrt(n)
#99% CONFIDENCE INTERVAL
lower <- samp_mean - 2.57 * se
upper <- samp_mean + 2.57 * se
c(lower, upper)
plot_ci(lower, upper, mean(population))

