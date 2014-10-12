dataSet <- read.table("household_power_consumption.txt",head = TRUE, sep = ";", na.strings = "?")
dataSetSub <- subset(dataSet, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot2.png", width = 480, height = 480)
