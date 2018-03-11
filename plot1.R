power_data <- read_power_consumtion_data()

hist(power_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.copy(png, "plot1.png")
dev.off()
