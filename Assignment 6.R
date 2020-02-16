getwd()

#SET NEW WORKING DIRECTORY
setwd("C:/St thomas/Fall 2017/631-Data Analysis/Assignments/Assignment 6")

load("nc.RData")
#LOOK AT DATA
nc

summary(nc)

#GROUP WEIGHT VARIABLE BY HABIT VARIABLE AND GET THE MEAN
by(nc$weight, nc$habit, mean)


inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, 
          alternative = "twosided", method = "theoretical")

inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical")


inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical", 
          order = c("smoker","nonsmoker"))
