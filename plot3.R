plot3 <- function(consumption_data){
  r=runif(length(consumption_data$DateTime))
  plot(consumption_data$DateTime, 
       consumption_data$Sub_metering_1,
       type="l",
       xaxt="n",
       xlab = "",
       ylab = "Energy Sub Metering")
  lines(consumption_data$DateTime, 
       consumption_data$Sub_metering_2,
       col = "red")
  lines(consumption_data$DateTime, 
       consumption_data$Sub_metering_3,
       col = "blue")
  axis.POSIXct(1, at = unique(round(consumption$DateTime, "days")),
               format= "%a")
  
  legend( x="topright", 
          legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
          col=c("black", "red","blue"), lwd=1, cex = 0.70 )
}