Plot1 <- function(){
    
    #read the data but only the two days 1/2 and 2/2/2007
    ElPoC <- read.table("data/household_power_consumption.txt",skip=grep("31/1/2007;23:59:00;",readLines("data/household_power_consumption.txt")),nrows=2880,sep=";")
    png("plot1.png")
    colnames(ElPoC) <- c("Date","Time","GlobActPow","GlobReaPow","Volt","GlobInt","SubMet1","SubMet2","SubMet3")
    hist(ElPoC$GlobActPow,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
    dev.off()
}