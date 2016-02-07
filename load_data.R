load.data <- function(download = F) {
  library(lubridate)
  
  if (download == T) {
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    ifelse(!dir.exists(file.path("./data/")), dir.create(file.path("./data/")), FALSE)
    download.file(url, "./data/data.zip", method = "curl")
    unzip("data.zip", exdir = "./data/")
  }
  
  df <- read.table("./data/household_power_consumption.txt", header = T, 
                   sep = ";", na.strings = "?", 
                   colClasses = c(rep("character",2), rep("numeric",7)))
  df$Date <- dmy(df$Date)
  df$Time <- hms(df$Time)
  epc <- subset(df, df$Date >= ymd("2007-02-01") & df$Date <= ymd("2007-02-02"))
  
  assign("epc", epc, envir = .GlobalEnv)
}
