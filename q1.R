library(dplyr)

#Read in dataset 1 and get the summary

data1 <- "C:/Users/andfe/Desktop/CSE323HW3/dataset1.csv"
d1 <- read.csv(data1)
summary(d1)

#BoxPlot of the data

library(ggplot2)
ggplot(d1, aes(x = menu, y = time, fill = menu)) + geom_boxplot() + geom_jitter(shape = 10, color = "blue", position = position_jitter(0.20)) + theme_classic()

#Anova for menu and Summary for anova

a1 <- aov(time~menu, data = d1)
summary(a1)
