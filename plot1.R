dataSet <- read.table("household_power_consumption.txt",head = TRUE, sep = ";", na.strings = "?")

dataSetSub <- subset(dataSet, Date == "1/2/2007" | Date == "2/2/2007")

png(filename = "plot1.png", width = 480, height = 480)

hist(dataSetSub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()