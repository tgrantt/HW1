# Read into R the data in the files "cheese1.csv" and "cheese2.csv".  These
# datasets contain the per capita consumption of different cheeses from 1995 to
# 2014. The two data sets cover the same years, although the names for the
# variable holding the year differ.  Merge the data together into a single
# data.frame in which all the consumption data for a given year is one
# observation.  Name your merged data.frame "cheese".  The dimension of this
# data.frame should be 20 rows and 7 columns.
cheese1 <- read.csv('/Users/granttrout/Stat223/HW1/hw1-starter/files/cheese1.csv',header=TRUE)
cheese2 <- read.csv('/Users/granttrout/Stat223/HW1/hw1-starter/files/cheese2.csv',header=TRUE)
View(cheese1)
View(cheese2)
library(tidyverse)
cheese <- cheese1 %>% inner_join(cheese2, by = c("Year" = "Time"))




# Which kind of cheese has the highest average consumption per capita over all
# years?
average_consumption <- apply(cheese[,2:7], 2, mean)

names(which.max(average_consumption))

# Which year saw the largest total consumption per capita of all cheeses?
total_consumption <- apply(cheese[,2:7], 1, sum)
cheese$Year[which.max(total_consumption)]
