library(tidyverse)
library(lubridate)

# read data

df <- read_csv("power.csv")

# plot 2

png(file = "plot2.png", width = 500, height = 500, units = "px")

plot(
        x = df$time, 
        y = df$Global_active_power, 
        type = "l", 
        ylab = "Global Active Power (kilowatts)",
        xlab = ""
)

dev.off()
