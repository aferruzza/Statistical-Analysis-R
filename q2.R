library(dplyr)

#Load Dataset2 and get summary

data2 <- "C:/Users/andfe/Desktop/CSE323HW3/dataset2.csv"
d2 <- read.csv(data2)
summary(d2)

#Get boxplots for both time and error
library(ggplot2)
ggplot(d2, aes(x = menu, y = time, fill = menu)) + geom_boxplot() + geom_jitter(shape = 10, color = "blue", position = position_jitter(0.20)) + theme_classic()
ggplot(d2, aes(x = menu, y = error, fill = menu)) + geom_boxplot() + geom_jitter(shape = 10, color = "blue", position = position_jitter(0.20)) + theme_classic()

#Group each data to calculate the Standard Dev and Mean for Each menu
toolglass <- head(d2, 10)
controlmenu <- filter(d2, menu=="controlmenu")
flowmenu <- filter(d2, menu=="flowmenu")
toolpalette <- filter(d2, menu=="toolpalette")

#Get the mean for both time and error of every menu
summary(toolglass)
summary(controlmenu)
summary(flowmenu)
summary(toolpalette)

#Get the sd for time and error--every menu
tgtime <- toolglass[, 2]
tgerror <- toolglass[, 3]
sd(tgtime)
sd(tgerror)

flowtime <- flowmenu[, 2]
flowerr <- flowmenu[, 3]
sd(flowtime)
sd(flowerr)

controltime <- controlmenu[, 2]
controlerr <- controlmenu[, 3]
sd(controltime)
sd(controlerr)

tooltime <- toolpalette[, 2]
toolerr <- toolpalette[, 3]
sd(tooltime)
sd(toolerr)


