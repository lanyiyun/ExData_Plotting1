# read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                   skip=grep("1/2/2007",readLines("household_power_consumption.txt")), nrows=60*24*2)
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity",
                    "sub_metering_1","sub_metering_2","sub_metering_3")
attach(data)

# plot and save
png(filename = 'plot2.png', width = 480, height = 480)
plot(Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")
axis(side = 1, at = c(0,60*24,60*24*2), labels = c("Thu","Fri","Sat"))

detach()
dev.off()