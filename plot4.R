par(mfrow=c(2,2))

power_data <- read_power_consumtion_data()

plot(power_data$DateTime, power_data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(power_data$DateTime, power_data$Global_active_power)

plot(power_data$DateTime, power_data$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(power_data$DateTime, power_data$Voltage)

plot(power_data$DateTime, power_data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(power_data$DateTime, power_data$Sub_metering_1)
lines(power_data$DateTime, power_data$Sub_metering_2, col="red")
lines(power_data$DateTime, power_data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.4, box.lty=0, inset=0.02)

plot(power_data$DateTime, power_data$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(power_data$DateTime, power_data$Global_reactive_power)

dev.copy(png, "plot4.png")
dev.off()
