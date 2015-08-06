plot2 <- function(consumption_data){
  plot(consumption_data$DateTime, 
       as.numeric(as.character(consumption_data$Global_active_power)),
       type="l",
       xaxt="n",
       xlab = "",
       ylab = "Global Active Power(Kilowatts)")
  axis.POSIXct(1, at = unique(round(consumption$DateTime, "days")),
            format= "%a")
}