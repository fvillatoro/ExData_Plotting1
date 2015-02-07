## READ SUBSET
subDAT <- read.csv("./household_power_consumption.txt" , 
                   h=F, skip= 66637, nrows= 2880, 
                   na.strings="?",
                   quote="", sep=";")
Headers <- read.csv("./household_power_consumption.txt",
                    h=F,nrows= 1, na.strings="?",
                    quote="", sep=";")
Headers
## PLot2
png(file="Plot2.png",
    width = 480, height = 480, units = "px")
plot(subDAT[,3],type="l",
     ylab= "Global Active Power (kilowatts)",
     xlab ="",
     xaxt='n')
axis(side=1, at = c(1,1440,2880), 
     labels = c("Fri","Thu","Sat"), 
     tick = 3)
dev.off()
