Plot3 <- function(){
    
    #read the data but only the two days 1/2 and 2/2/2007
    ElPoC <- read.table("data/household_power_consumption.txt",skip=grep("31/1/2007;23:59:00;",readLines("data/household_power_consumption.txt")),nrows=2880,sep=";")
    colnames(ElPoC) <- c("Date","Time","GlobActPow","GlobReaPow","Volt","GlobInt","SubMet1","SubMet2","SubMet3")
    d<-as.Date(ElPoC$Date,"%d/%m/%Y")
    DT<-as.POSIXct(paste(d,ElPoC$Time))
    
    #Third plot
    png("plot3.png")
    plot(DT,ElPoC$SubMet1, type="l",xlab = "",ylab="Energy sub metering")
    lines(DT,ElPoC$SubMet2,col="red")
    lines(DT,ElPoC$SubMet3,col="blue")
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1))
    dev.off()
}