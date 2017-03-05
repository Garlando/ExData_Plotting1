source("get_data.R")

png("plot1.png")
hist(required_data$Global_active_power,col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Gloabl Active Power")
dev.off()