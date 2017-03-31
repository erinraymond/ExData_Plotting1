
source("LoadData.R")

par(mfrow = c(2, 2))

with(mydata, plot(mydatetime
                  , Global_active_power
                  , type="l"
                  , xlab = ""
                  , ylab = "Global Active Power (kilowatts)"))

with(mydata, plot(mydatetime
                  , Voltage
                  , type="l"
                  , xlab = "datetime"
                  , ylab = "Voltage"))

with(mydata, plot(mydatetime
                  , Sub_metering_1
                  , type="n"
                  , xlab = ""
                  , ylab = "Energy Sub Metering"))
with(mydata, points(mydatetime
                  , Sub_metering_1
                  , col="black"
                  , type="l"))
with(mydata, points(mydatetime
                  , Sub_metering_2
                  , col="red"
                  , type="l"))
with(mydata, points(mydatetime
                  , Sub_metering_3
                  , col="blue"
                  , type="l"))
legend("topright"
       , lty=1
       , col = c("black", "red", "blue")
       , legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

with(mydata, plot(mydatetime
                  , Global_reactive_power
                  , type="l"
                  , xlab = "datetime"
                  , ylab = "Global_reactive_power"))