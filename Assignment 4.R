getwd()

#SET NEW WORKING DIRECTORY
setwd("C:/St thomas/Fall 2017/631-Data Analysis/Assignments/Assignment 4")

load("ames.RData")
#LOOK AT DATA IN ames
ames

#SET VARIABLES
area <- ames$Gr.Liv.Area
price <- ames$SalePrice

#SUMMARY STATISTICS
summary(area)

#HISTOGRAM
hist(area)

#RANDOM SAMPLE OF 50 FROM area ASSIGNED TO samp0
samp0 <- sample(area, 50)

#RANDOM SAMPLE1 OF 50 FROM area ASSIGNED TO samp1
samp1 <- sample(area, 50)

#HISTOGRAM
hist(samp1)

mean(samp1)

#RANDOM SAMPLE2 OF 100 FROM area ASSIGNED TO samp2
samp2 <- sample(area, 100)
mean(samp2)

#RANDOM SAMPLE3 OF 1000 FROM area ASSIGNED TO samp3
samp3 <- sample(area, 1000)
mean(samp3)

#COLLECTION OF MEANS FROM RANDOM SAMPLES OF 50 OF AREA
sample_means50 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
}

hist(sample_means50)
hist(sample_means50, breaks = 25)
summary(sample_means50)
#SAMPLE STATS 
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#1253    1451    1497    1499    1546    1781

sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp)
}

#DIVIDE OUTPUT INTO 3 ROWS 1 COLUMN
par(mfrow = c(3, 1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

par(mfrow=c(1,1))

#SAMPLES OF 50 PRICES
sampPrice <- sample(price, 50)
hist(sampPrice)
summary(sampPrice)



#COLLECTION OF 5000 MEANS FROM SAMPLES OF 50
sample_means50 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(price, 50)
  sample_means50[i] <- mean(samp)
  
}

summary(sample_means50)

#COLLECTION OF 5000 MEANS FROM SAMPLES OF 150
sample_means150 <- rep(NA, 5000)
for (i in 1: 5000) {
  samp <- sample(price, 150)
  sample_means150[i] <- mean(samp)
  
}

par(mfrow = c(3, 1))
xlimits = range(sample_means50)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means150, breaks = 20, xlim = xlimits)
summary(sample_means150)

par(mfrow = c(3, 1))
hist(price, breaks = 100, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means150, breaks = 20, xlim = xlimits)
