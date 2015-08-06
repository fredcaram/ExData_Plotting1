plot4 <- function(consumption_data){
  par(mfrow=c(2, 2), mar = c(3, 3, 2, 2), mgp = c(2, 1, 0), cex.lab = 0.7, cex.axis = 0.7)
  
  plot2(consumption_data)
  
  plot(consumption_data$DateTime, 
       consumption_data$Voltage,
       type="l",
       xaxt="n",
       xlab = "datetime",
       ylab = "Voltage")
  axis.POSIXct(1, at = unique(round(consumption$DateTime, "days")),
               format= "%a")
  
  plot3(consumption_data)
  
  plot(consumption_data$DateTime, 
       as.numeric(as.character(consumption_data$Global_reactive_power)),
       type="l",
       xaxt="n",
       xlab = "datetime",
       ylab = "GLobal_Reactive_Power")
  axis.POSIXct(1, at = unique(round(consumption_data$DateTime, "days")),
               format= "%a")
}