
source("LoadData.R")

png("plot3.png", width=480, height=480)

with(mydata, plot(mydatetime
                  , Sub_metering_1
                  , type="n"
                  , xlab = ""
                  , ylab = "Energy Sub Metering"))

with(mydata, points(mydatetime
                    , Sub_metering_1
                    , type="l"
                    , col="black"))

with(mydata, points(mydatetime
                    , Sub_metering_2
                    , type="l"
                    , col="red"))

with(mydata, points(mydatetime
                    , Sub_metering_3
                    , type="l"
                    , col="blue"))

legend("topright"
       , lty=1
       , col = c("black", "red", "blue")
       , legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

dev.off()