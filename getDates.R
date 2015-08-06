GetConsumptionInDates <- function(date_vector){
  file_data <- read.csv2("../household_power_consumption.txt")
  delimited_file <- file_data[as.Date(file_data$Date, "%d/%m/%Y") %in% date_vector,]
  delimited_file$DateTime <- strptime(paste(delimited_file$Date, delimited_file$Time, sep = "-"),
                                      format='%d/%m/%Y-%H:%M:%S')
  delimited_file
}
