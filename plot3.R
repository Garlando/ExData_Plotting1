source("get_data.R")

png("plot3.png")

with(required_data, plot(datetime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab=""))
with(required_data, lines(datetime, Sub_metering_2, col="red"))
with(required_data, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)

dev.off()