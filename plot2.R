###################################################################################
#R program to generate a Plot of a subset of household power consumption Data
#
# Author - Kesava R Alahari
###################################################################################

dataFile <- "C:/DataSci/EDA_Week1_Assign/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(DataSubSet$Date, DataSubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(DataSubSet$Global_active_power)
png("C:/DataSci/EDA_Week1_Assign/plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
