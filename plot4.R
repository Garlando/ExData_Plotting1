source("get_data.R")

plot_all <- function() {
  png("plot4.png")
  par(mfcol=c(2,2))
  
  plot_gap()
  plot_sub_metering()
  plot_voltage()
  plot_grp()

  dev.off()
}

plot_gap <- function() {
  with(required_data, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab=""))  
}

plot_grp <- function() {
  with(required_data, plot(datetime, Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab=""))  
}

plot_voltage <- function() {
  with(required_data, plot(datetime, Voltage, type = "l", ylab = "Voltage", xlab="datetime"))
}

plot_sub_metering <- function() {
  with(required_data, plot(datetime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab=""))
  with(required_data, lines(datetime, Sub_metering_2, col="red"))
  with(required_data, lines(datetime, Sub_metering_3, col="blue"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1, bty="n")
}


plot_all()