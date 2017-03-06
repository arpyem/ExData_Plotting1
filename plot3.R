library(tidyverse)
library(lubridate)

# read data

df <- read_csv("power.csv")

# plot 2

png(file = "plot3.png", width = 500, height = 500, units = "px")

plot(
        x = df$time, 
        y = df$Sub_metering_1, 
        type = "l", 
        ylab = "Energy sub metering",
        xlab = ""
)

points(x = df$time, y = df$Sub_metering_2, type = "l", col = "red")
points(x = df$time, y = df$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = colnames(df)[7:9], lty = 1, col = c("black", "red", "blue"))

dev.off()
