install.packages("gsubfn")
install.packages("sqldf")
library(sqldf)

read_power_consumtion_data <- function(file="./data/household_power_consumption.txt", sep=";") {
  data <- read.csv.sql(file, "select * from file where Date = '1/2/2007' or Date = '2/2/2007'", sep=sep)
  data$DateTime <- as.POSIXlt(paste(d$Date, d$Time), format="%d/%m/%Y %T")
  data
}
