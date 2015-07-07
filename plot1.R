if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/KimChul/Desktop/Coursera/exploraltory_data_analysis/")
} 
source("load_data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()
