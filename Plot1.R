#plot1 code
fh <- file("household_power_consumption.txt")
ba <- read.table(text = grep("^[1,2]/2/2007", readLines(fh), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
hist(ba$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")dev.copy(png, file="plot1.png", height=480, width=480)
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
