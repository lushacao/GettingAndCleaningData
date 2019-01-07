##The American Community Survey distributes downloadable data about United 
##States communities. Download the 2006 microdata survey about housing for the 
##state of Idaho.
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
if(!file.exists("data")){
        dir.create("data")
}
download.file(fileURL, destfile = "./data/USCommunities.csv", method = "curl")
list.files("./data")
dataDownloaded <- date()

##read local file
df <- read.csv("./data/USCommunities.csv")
head(df)

##The code book, describing the variable names is here:
##https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf
##How many properties are worth $1,000,000 or more?
library(dplyr)
usc <- tbl_df(df)
value <- usc %>%
        select(VAL) %>%
        filter(VAL == 24) %>%
        print