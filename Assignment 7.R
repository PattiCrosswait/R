getwd()

#SET NEW WORKING DIRECTORY
setwd("C:/St thomas/Fall 2017/631-Data Analysis/Assignments/Assignment 7")

load("atheism.RData")
#LOOK AT DATA
atheism
summary(atheism)
us12 <- subset(atheism, nationality == "United States" & year == "2012")
summary(us12)
us12 <- subset(atheism, nationality == "United States" & year == "2012" & response == 'atheist')
summary(us12)

prop.test(table(us12$response)[1], sum(table(us12$response)), correct=F)

Argentina_12 <- subset(atheism, nationality == "Argentina" & year == "2012")
summary(Argentina_12)
prop.test(table(Argentina_12$response)[1], sum(table(Argentina_12$response)), correct=F)

Australia_12 <- subset(atheism, nationality == "Australia" & year == "2012")
summary(Australia_12)
prop.test(table(Australia_12$response)[1], sum(table(Australia_12$response)), correct=F)


n <- 1000
p <- seq(0, 1, 0.01)
me <- 2 * sqrt(p * (1 - p)/n)
plot(me ~ p)


p <- 0.1
n <- 1040
p_hats <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats[i] <- sum(samp == "atheist")/n
}

hist(p_hats, main = "p = 0.1, n = 1040", xlim = c(0, 0.18))
summary(p_hats)
par(mfrow = c(2,2))

p <- 0.1
n <- 400
p_hats <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats[i] <- sum(samp == "atheist")/n
}

hist(p_hats, main = "p = 0.1, n = 400", xlim = c(0, 0.18))


p <- 0.02
n <- 1040
p_hats <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats[i] <- sum(samp == "atheist")/n
}

hist(p_hats, main = "p = 0.02, n = 1040", xlim = c(0, 0.18))


p <- 0.02
n <- 400
p_hats <- rep(0, 5000)

for (i in 1:5000) {
  samp <- sample(c("atheist", "non_atheist"), n, replace = TRUE, prob = c(p, 1 - p))
  p_hats[i] <- sum(samp == "atheist")/n
}

hist(p_hats, main = "p = 0.02, n = 400", xlim = c(0, 0.18))