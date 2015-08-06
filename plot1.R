plot1 <- function(consumption_data){
  hist(as.numeric(as.character(consumption_data$Global_active_power)), 
       xlab="Global Active Power(Kilowatts)",
       ylab="Frequency",
       col = "red", main="")
}