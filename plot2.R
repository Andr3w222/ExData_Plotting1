#Set where data is located
dataFile <- "./household_power_consumption.txt"

#Read in data
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset data that we are interested in
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Format date and time data
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Subset data for plot 2
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Create plot 2
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
