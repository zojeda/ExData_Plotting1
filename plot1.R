source('./readFileData.R')

png(filename = "plot1.png", width = 480, height = 480)

hist(hhopc$Global_active_power, col = "red", main = "Globa Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()