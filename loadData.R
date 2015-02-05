# Load the data fro the downloaded text file
setwd('d:/coursera/Exploratory Data Analysis')

# Read the file in
fullset <- read.delim("household_power_consumption.txt", 
                      stringsAsFactors=FALSE,
                      sep=';',
                      na.strings = '?',
                      colClasses = c("character", "character","numeric"
                                    ,"numeric","numeric","numeric"
                                    ,"numeric","numeric","numeric")
                     )

# Convert the date + time columns to a datetime column
fullset$datetime <- strptime(paste(fullset$Date,fullset$Time),format='%d/%m/%Y %H:%M:%S')
# Extract only the two days required
reduset <- subset(fullset[,3:10],fullset$datetime>='2007-02-01 00:00:00'& fullset$datetime<='2007-02-02 23:59:59')
# Delete the full set to save memory
rm(fullset)
