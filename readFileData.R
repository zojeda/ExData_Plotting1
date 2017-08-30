
if (!exists('hhopc')) {
  readFileData = function(filepath) {
    # easier solution :    result <- read.csv.sql(filepath,"select * from file where Date = '1/2/2007' or Date = '2/2/2007' ", sep=";")
    
    # trying to learn file manipulation
    filteredHHPCFileName <- tempfile("filteredHHPC",fileext=".csv")
    print(filteredHHPCFileName)
    
    filteredHHPC <- file(filteredHHPCFileName, "w" )

    con <- file(filepath, "r")
    
    header <- readLines(con, n = 1)
    cat(header, file=filteredHHPC, sep="\n" )
    
    while ( TRUE ) {
      line <- readLines(con, n = 1)
      if ( length(line) == 0) {
        break
      }
      if( startsWith(line, "1/2/2007") || startsWith(line, "2/2/2007") ) {
        cat(line, file=filteredHHPC, sep="\n", append = TRUE )
      }
    }
    
    close(con)
    close(filteredHHPC)
    read.csv(filteredHHPCFileName, sep = ";")
  }
  
  
  hhopc <- readFileData('../household_power_consumption.txt')
  datetime <- strptime(paste(hhopc$Date, hhopc$Time), "%d/%m/%Y %H:%M:%S")
}
