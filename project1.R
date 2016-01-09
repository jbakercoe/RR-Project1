act <- read.csv("activity.csv")
means <- aggregate(steps~date, act, mean)
means$steps <- as.numeric(means$steps)
hist(means$steps)

##plot time series
plot.ts(means)