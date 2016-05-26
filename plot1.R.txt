###################################################################################
#R program to generate a histogram of a subset of household power consumption Data
#
# Author - Kesava R Alahari
###################################################################################

dataFile <- "C:/DataSci/EDA_Week1_Assign/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(DataSubSet$Global_active_power)
png("C:/DataSci/EDA_Week1_Assign/plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", font=2)
dev.off()