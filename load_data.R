setwd("C:/Users/KimChul/Desktop/Coursera/exploraltory_data_analysis")
getwd()

filename <- "./data/household_power_consumption.txt"
data <- read.table(filename, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?")

dim(data)  # 2075259  9
attach(data)

############2007-02-01 ~ 2007-0202#################

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)

head(newData)
