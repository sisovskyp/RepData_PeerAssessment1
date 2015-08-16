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
median <- data.frame(tapply(activitydata$steps, activitydata$date, FUN = (median, na.rm = FALSE)))
colnames(median) <- c("steps median")
barplot(median$`steps median`)

## What is the average daily activity pattern?

mutate(activitydata, average = )


plot(activitydata$interval, activitydata$ steps, type = "l")


?median


?hist
?by
library(dplyr)


?by
?aggregate
