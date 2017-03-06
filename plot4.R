library(tidyverse)
library(lubridate)

# read data

df <- read_csv("power.csv")

# plot 2

png(file = "plot4.png", width = 500, height = 500, units = "px")

par(mfrow = c(2, 2))

hist(
        x = df$Global_active_power, 
        col = "red", 
        xlab = "Global Active Power (kilowatts)", 
        main = "Global Active Power"
)

plot(
        x = df$time, 
        y = df$Global_active_power, 
        type = "l", 
        ylab = "Global Active Power (kilowatts)",
        xlab = ""
)

plot(
        x = df$time, 
        y = df$Sub_metering_1, 
        type = "l", 
        ylab = "Energy sub metering",
        xlab = ""
)

points(x = df$time, y = df$Sub_metering_2, type = "l", col = "red")
points(x = df$time, y = df$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = colnames(df)[7:9], lty = 1, col = c("black", "red", "blue"), bty = "n")

plot(
        x = df$time, 
        y = df$Global_reactive_power, 
        type = "l", 
        ylab = "Global_reactive_power",
        xlab = "datetime"
)

dev.off()
