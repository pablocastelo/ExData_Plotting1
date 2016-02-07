setwd("~/projects/coursera/Exploratory Analysis/w1/ExData_Plotting1")

source("load_data.R")
load.data() # use parameter download = True to download data as well.

epc$dat <- epc$Date + epc$Time

png("plot3.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(epc, plot(dat, Sub_metering_1, type = "l", 
               xlab = "", ylab = "Energy sub metering"))
lines(epc$Sub_metering_2 ~ epc$dat, col = "red")
lines(epc$Sub_metering_3 ~ epc$dat, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))

dev.off()
