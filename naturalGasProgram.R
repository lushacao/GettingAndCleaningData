##Download the Excel spreadsheet on Natural Gas Aquisition Program here:
##https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx
if(!file.exists("data")){
        dir.create("data")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileURL, destfile = "./data/naturalgas.xlsx", method = "curl")
dataDownloaded <- date()

##Read rows 18-23 and columns 7-15 into R
library(xlsx)
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./data/naturalgas.xlsx", sheetName = "NGAP Sample Data", 
                     header = TRUE, colIndex = colIndex, rowIndex = rowIndex)
##calculate