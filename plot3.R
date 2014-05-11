## "Energy sub metering" versus the day of the week
### Time in Complex Chinese version which I cannot change

data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$Time, data$Sub_metering_2, type = 'l', col = "red")
lines(data$Time, data$Sub_metering_3, type = 'l', col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
                                                                        "Sub_metering_2", "Sub_metering_3"))