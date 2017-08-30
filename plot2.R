source('./readFileData.R')

png(filename = "plot2.png", width = 480, height = 480)

plot(datetime, hhopc$Global_active_power, type = "l")

dev.off()