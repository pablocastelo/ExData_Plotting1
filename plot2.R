setwd("~/projects/coursera/Exploratory Analysis/w1/ExData_Plotting1")

source("load_data.R")
load.data() # use parameter download = True to download data as well.

epc$dat <- epc$Date + epc$Time

png("plot2.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(epc, plot(dat, Global_active_power, type = "l", 
               xlab = "", ylab = "Global Active Power (kilowatt)"))
dev.off()
