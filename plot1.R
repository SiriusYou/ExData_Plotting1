# course project

## Reading data
power <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
str(power)
data = subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

## Convert the Date and Time variables to Date/Time classes 

data$Time <- paste(data$Date, data$Time)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$Time <- strptime(data$Time, "%d/%m/%Y %H:%M:%S")

## Univariate histogram
data$Global_active_power <- as.numeric(data$Global_active_power)
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = 
       "Global Active Power (kilowatts)")