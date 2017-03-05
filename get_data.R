get_data <- function() {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data/exdata%2Fdata%2Fhousehold_power_consumption.zip")
  unzip("data/exdata%2Fdata%2Fhousehold_power_consumption.zip", exdir = "data")
  all_data <- read.table("data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
  
  all_data
}

get_required_data <- function(input_data) {
  datetime <- paste(input_data$Date, input_data$Time)
  datetime <-strptime(datetime, "%d/%m/%Y %H:%M:%S")
  output_data <- subset(input_data, select = Global_active_power:Sub_metering_3)
  output_data <- cbind(datetime, output_data)
  output_data <- subset(output_data, datetime >= "2007-02-01 00:00:00" & datetime < "2007-02-03 00:00:00")
  
  output_data
}

all_data <- get_data()
required_data <- get_required_data(all_data)