setwd("~/projects/coursera/Exploratory Analysis/w1/ExData_Plotting1")

source("load_data.R")
load.data() # use parameter download = True to download data as well.

png("plot1.png", width = 480, height = 480)
par(mfrow = c(1,1))
with(epc, hist(Global_active_power, col = "red", 
               xlab = "Global Active Power (kilowatts)", 
               main = "Global Active Power"))
dev.off()