# You should first set your working directory using a command similar to the below,
# adjusted for your setup:
#setwd('d:/coursera/Exploratory Data Analysis')

# Load in the data, using a script which holds the loading elements common to all plot
# scripts, and can therefore be included in each plot's script. This improves readability 
# and means any change to that part of the script only needs to be made in one place 
# instead of four.
source('loadData.R')

# Delete the target PNG file if it exists (else the procedure will fail)
unlink('plot4.png')

# Set up a png file as the device for output. It will be
# created in the working directory
png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

# set up plotting for two-by-two graphs per plot
# note this only affects the current device, so we must call
# it after we've set the device to the png file
# mfrow adds plots across then down (i.e. by row)
par(mfrow=c(2, 2))

# First graph
plot.new
plot(x=reduset$datetime,y=reduset$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)"
)

# Second graph
plot(x=reduset$datetime,y=reduset$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage"
)

# Third graph
plot(x=reduset$datetime,y=reduset$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering"
)
lines(x=reduset$datetime,y=reduset$Sub_metering_2,col="red")
lines(x=reduset$datetime,y=reduset$Sub_metering_3,col="blue")
legend("topright"
       ,c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,col=c("black","red","blue")
       ,lty=1
)

# Fourth graph
plot(x=reduset$datetime,y=reduset$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power"
)

# Switch off (close) the output device (file)
dev.off()