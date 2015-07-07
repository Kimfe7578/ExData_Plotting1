if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/KimChul/Desktop/Coursera/exploraltory_data_analysis/")
} 
source("load_data.R")
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
