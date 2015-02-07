## READ SUBSET
subDAT <- read.csv("./household_power_consumption.txt" , 
                   h=F, skip= 66637, nrows= 2880, 
                   na.strings="?",
                   quote="", sep=";")
Headers <- read.csv("./household_power_consumption.txt",
                    h=F,nrows= 1, na.strings="?",
                    quote="", sep=";")
Headers
## Plot1
hist(subDAT[,3], 
     xlab= "Global Active Power (kilowatts)",
     main= "Global Active Power", 
     col=2)
dev.copy(png, 
         file="Plot1.png",
         width = 480, height = 480, units = "px")
dev.off()