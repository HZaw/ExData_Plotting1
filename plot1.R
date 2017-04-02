## Exploratory-Data-Analysis ##
library(dplyr)
library(lubridate)
library(data.table)

# reading relevant data

#data <- fread("household_power_consumption.txt", na.strings="?",stringsAsFactors = FALSE)
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
#data <- filter(data, grep("^[1,2]/2/2007", Date))

# converting to numerics
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

# creating histogram
png(filename = "plot1.png", width = 480, height = 480)
hist(data$V3, col = "purple1", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")
dev.off()

