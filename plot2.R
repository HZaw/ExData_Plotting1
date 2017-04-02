## Exploratory-Data-Analysis ##
library(dplyr)
library(lubridate)
library(data.table)

# Plot2.R #

data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# saving plot with formatted size #
png(filename = "plot2.png", width = 480, height = 480)

# creating date and time in one
data$timestamp <-paste(data$V1, data$V2)

# Plotting #
plot(strptime(data$timestamp, "%d/%m/%Y %H:%M:%S"), data$V3, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

dev.off()
