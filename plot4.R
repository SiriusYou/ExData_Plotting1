## "Global Active Power", "Voltage", "Energy sub metering", and "Global_reactive_power" versus
## datetime in four plots
### Date/Time in Complex Chinese version which I cannot change

par(mfrow = c(2, 2))

plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

data$Voltage <- as.numeric(data$Voltage)
plot(data$Time, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$Time, data$Sub_metering_2, type = 'l', col = "red")
lines(data$Time, data$Sub_metering_3, type = 'l', col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
                                                                        "Sub_metering_2", "Sub_metering_3"))

data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
plot(data$Time, data$Global_reactive_power, type = "l", xlab = "datatime", ylab = 
       "Global_reactive_power")