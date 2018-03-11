power_data <- read_power_consumtion_data()

plot(power_data$DateTime, power_data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(power_data$DateTime, power_data$Sub_metering_1)
lines(power_data$DateTime, power_data$Sub_metering_2, col="red")
lines(power_data$DateTime, power_data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.4)
