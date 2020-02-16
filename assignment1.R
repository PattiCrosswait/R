#FIND CURRENT WORKING DIRECTORY
getwd
getwd()
#SET NEW WORKING DIRECTORY
setwd("C:\St thomas\Fall 2017\631\Assignments\Assignment 1")
setwd("C:/St thomas/Fall 2017/631/Assignments/Assignment 1")
load("present.RData")
#LOOK AT DATA IN present
present
#SEE DIMENSIONS
dim(present)
#SEE COLUMN NAMES
names(present)
View(present)
#ACCESS DATA FOR COLUMN
present$girls
#PLOT 
plot(x=present$year,y=present$girls)
plot(x = present$year,y = present$girls)
plot(x = present$year,y = present$girls)
plot(x=present$year,y=present$girls)
plot(x=present$year,y=present$girls)
#PLOT WITH LINE
plot(x=present$year,y=present$girls,type="l")
plot(x=present$year,y=present$girls,type="l")
#SHOW HELP FILE FOR PLOT
?plot
?plot
1211684 + 1148715
present$boys + present$girls
#CREATE NEW VARIABLE IN DATASET present$total
present$total <- present$boys + present$girls
#View new variable
present$total
plot(present$year, present$total, type = "l")
?which.max
which.max(present$total)
present$boys/(present$boys + present$girls)
plot(present$boys/(present$boys + present$girls))
proportion$BoysOverTime = present$boys/(present$boys + present$girls)
plot(present$boys/(present$boys + present$girls),"l")
plot(present$boys/(present$boys + present$girls),present$year,"l")
#PLOT present$year as x and present$boys/(present$boys + present$girls as y-axis
plot(present$year,present$boys/(present$boys + present$girls),"l")
present$boys > present$girls
sum()
sum(present$boys > present$girls)
which.max(present$total)
plot(present$year, present$total, type = "l")
which.max(present$total)
which.max(present$total, present$year)
which.max(present$total)
present$boys/present$girls
plot(present$year, present$boys/present$girls, type = "l")
abs(present$boys-present$girls)
?abs
#ABSOLUTE VALUE
abs(present$boys-present$girls)
which.max(abs(present$boys-present$girls))
plot(present$year,which.max(abs(present$boys-present$girls)))
#plot(present$year,which.max(abs(present$boys-present$girls))
plot(present$year,abs(present$boys-present$girls))
plot(present$year,abs(present$boys-present$girls),"l")
