setwd("//cir-nas/users/TEC11291/Coursera/Exploratory Data Analysis/Week1")

library(dplyr)

mydata <- tbl_df(read.table("household_power_consumption.txt"
                            , header=T
                            , sep=";"
                            , na.strings = "?"
                            , stringsAsFactors = FALSE))

mydata$Date = as.Date(mydata$Date, format="%d/%m/%Y")

mydata <- mydata %>%
        filter(Date == "2007-02-01" | Date == "2007-02-02")

mydatetime <- strptime(paste(as.character(mydata$Date)
                             , mydata$Time
                             , sep=" ")
                       , format =  "%Y-%m-%d %H:%M:%S")






