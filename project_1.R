## loading and preprocessing data

unzip ("repdata-data-activity.zip")
activitydata <- read.csv("activity.csv", header = TRUE)
head(activitydata)
tail(activitydata)
str(activitydata)

## What is mean total number of steps taken per day?

totalnumber <- data.frame(tapply(activitydata$steps, activitydata$date, sum))
colnames(totalnumber) <- c("steps total")
hist(totalnumber$`steps total`, breaks = 100, main = "Histogram of total number of steps per day", xlab = "total number of steps")

## mean per day

mean <- data.frame(tapply(activitydata$steps, activitydata$date, mean))
colnames(mean) <- c("steps mean")
barplot(mean$`steps mean`)

## median per day
median(activitydata$steps, na.rm = FALSE)

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
