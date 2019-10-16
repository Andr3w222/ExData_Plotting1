#Set where the data is located
dataFile <- "./household_power_consumption.txt"

#Read in data
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset data that we are interested in
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Subset data for plot 1
globalActivePower <- as.numeric(subSetData$Global_active_power)

#Create plot 1
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
