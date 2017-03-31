
source("LoadData.R")

png("plot1.png", width=480, height=480)

hist(mydata$Global_active_power
     , xlab="Global Active Power (kilowatts)"
     , ylab="Frequency"
     , col="Red"
     , main="Global Active Power")

dev.off()