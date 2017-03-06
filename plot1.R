library(tidyverse)
library(lubridate)

# read data

df <- read.table(file = "data/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")

# format data

df2 <- df %>%
        filter(Date %in% c("1/2/2007", "2/2/2007")) %>%
        mutate(time = paste(Date, Time) %>% dmy_hms())

# write formatted data

write_csv(x = df2, path = "power.csv")

# plot 1

png(file = "plot1.png", width = 500, height = 500, units = "px")

hist(
        x = df2$Global_active_power, 
        col = "red", 
        xlab = "Global Active Power (kilowatts)", 
        main = "Global Active Power"
)

dev.off()


