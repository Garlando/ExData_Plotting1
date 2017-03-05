source("get_data.R")

png("plot2.png")
with(required_data, plot(datetime,Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab=""))
dev.off()