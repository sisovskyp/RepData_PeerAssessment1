## loading and preprocessing data

unzip ("repdata-data-activity.zip")
activitydata <- read.csv("activity.csv", header = TRUE)
head(activitydata)
tail(activitydata)
str(activitydata)

## What is mean total number of steps taken per day?

totalnumber <- data.frame(tapply(activitydata$steps, activitydata$date, sum))
colnames(totalnumber) <- c("steps total")
png(file = "plot1.png")
hist(totalnumber$`steps total`, breaks = 100, main = "Histogram of total number of steps per day", xlab = "total number of steps")
dev.off()

## mean per day

mean <- data.frame(tapply(activitydata$steps, activitydata$date, mean))
colnames(mean) <- c("steps mean")
png(file = "plot2.png")
barplot(mean$`steps mean`, xlab = "date", ylab = "mean of the number of steps", main = "Mean of the total number of steps per day")
dev.off()

## median per day
median <- data.frame(tapply(activitydata$steps, activitydata$date, median, na.rm = TRUE))
colnames(median) <- c("steps median")
png(file = "plot3.png")
barplot(median$`steps median`, xlab = "date", ylab = "median of the number of steps", main = "Median of the total number of steps per day")
dev.off()

## What is the average daily activity pattern?
dailypattern <- data.frame(tapply(activitydata$steps, activitydata$interval, mean, na.rm = TRUE))
colnames(dailypattern) <- c("steps mean")
intervals <- unique(activitydata$interval)
dailypattern <- cbind(dailypattern, intervals)
png(file = "plot4.png")
plot(dailypattern$intervals, dailypattern$`steps mean`, type = "l",xlab = "interval", ylab = "mean of the number of steps", main = "Average daily activity pattern")
dev.off()



?median
?aggregate
?with
?hist
?by
library(dplyr)


?by
?aggregate
