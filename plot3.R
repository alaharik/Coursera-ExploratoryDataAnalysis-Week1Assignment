###################################################################################
#R program to generate a Plot of a subset of household power consumption metering Data
#
# Author - Kesava R Alahari
#################################################################################
dataFile <- "C:/DataSci/EDA_Week1_Assign/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataSubSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(DataSubSet$Date, DataSubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(DataSubSet$Global_active_power)
subMetering1 <- as.numeric(DataSubSet$Sub_metering_1)
subMetering2 <- as.numeric(DataSubSet$Sub_metering_2)
subMetering3 <- as.numeric(DataSubSet$Sub_metering_3)
png("C:/DataSci/EDA_Week1_Assign/plot3.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Energy Submetering")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


