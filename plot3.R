source('./readFileData.R')

png(filename = "plot3.png", width = 480, height = 480)

plot(datetime, hhopc$Sub_metering_1, type = "l", col = "black", xlab="", ylab="Energy sub metering")
lines(datetime, hhopc$Sub_metering_2, type = "l", col = "red")
lines(datetime, hhopc$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 2, col=c("black", "red", "blue"))


dev.off()