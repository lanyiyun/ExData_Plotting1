# read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                  skip=grep("1/2/2007",readLines("household_power_consumption.txt")), nrows=60*24*2)
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity",
                    "sub_metering_1","sub_metering_2","sub_metering_3")
attach(data)

# plot and save
png(filename = 'plot1.png', width = 480, height = 480)
hist(Global_active_power,col = '2',xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

detach()
dev.off()





