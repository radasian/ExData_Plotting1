# You should first set your working directory using a command similar to the below,
# adjusted for your setup:
#setwd('d:/coursera/Exploratory Data Analysis')

# Load in the data, using a script which holds the loading elements common to all plot
# scripts, and can therefore be included in each plot's script. This improves readability 
# and means any change to that part of the script only needs to be made in one place 
# instead of four.
source('loadData.R')

# Delete the target PNG file if it exists (else the procedure will fail)
unlink('plot2.png')

# Set up a png file as the device for output. It will be
# created in the working directory
png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white", res = NA, family = "", restoreConsole = TRUE,
    type = c("windows", "cairo", "cairo-png"))

# Add the plot
plot(x=reduset$datetime,y=reduset$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)"
)

# Switch off (close) the output device (file)
dev.off()