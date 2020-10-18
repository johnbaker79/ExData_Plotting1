#Load full dataset
data <- read.table("~/Desktop/Coursera/household_power_consumption.txt", header = T,sep = ";", na.strings = "?")

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- subset(data, subset = Date >= "2007-02-01" & Date<= "2007-02-02")
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%s")


#Plot1 less go...
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")

dev.off()
