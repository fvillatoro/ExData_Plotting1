## READ SUBSET
subDAT <- read.csv("./household_power_consumption.txt" , 
                   h=F, skip= 66637, nrows= 2880, 
                   na.strings="?",
                   quote="", sep=";")
Headers <- read.csv("./household_power_consumption.txt",
                    h=F,nrows= 1, na.strings="?",
                    quote="", sep=";")
Headers
## Plot3
plot(subDAT[,7],type="n",
     ylab= "Energy Sub metering",
     xlab ="",
     xaxt='n')
lines(subDAT[,7],col=1)
lines(subDAT[,8],col=2)
lines(subDAT[,9],col=4)
legend("topright",
       legend= c("Sub_metering_1","Sub_metering_2"
                 ,"Sub_metering_3"),  
       lty= c(1,1), col= c(1,2,4))
axis(side=1, at = c(1,1440,2880), 
     labels = c("Fri","Thu","Sat"), 
     tick = 3)
dev.copy(png, 
         file="Plot3.png",
         width = 480, height = 480, units = "px")
dev.off()