dataSet <- read.table("household_power_consumption.txt",head = TRUE, sep = ";", na.strings = "?")
dataSetSub <- subset(dataSet, Date == "1/2/2007" | Date == "2/2/2007")
dataSetSub$Date <- as.Date(dataSetSub$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(dataSetSub$Date), dataSetSub$Time)
dataSetSub$Datetime <- as.POSIXct(datetime)
png(filename = "plot3.png", width = 480, height = 480)
with(dataSetSub, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()