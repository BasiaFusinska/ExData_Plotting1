power_data <- read_power_consumtion_data()

plot(power_data$DateTime, power_data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(power_data$DateTime, power_data$Global_active_power)

dev.copy(png, "plot2.png")
dev.off()
