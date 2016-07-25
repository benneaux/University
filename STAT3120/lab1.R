source("packages.R")

studentdata <- readRDS(file = "Data/studentdata.rds")

studentdata[1,]
attach(studentdata)
table(Drink)

hours.of.sleep = WakeUp - ToSleep
hist(hours.of.sleep, main= "Hoursof Sleep", xlab = "No. of Hours")

arg <- hours.of.sleep ~ Gender

boxplot(arg, ylab = "Hours of Sleep")

plot(jitter(ToSleep), jitter(hours.of.sleep))

fit <- lm(hours.of.sleep~ToSleep)
fit
abline(fit)
