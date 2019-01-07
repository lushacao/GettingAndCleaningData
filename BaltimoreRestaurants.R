##Read the XML data on Baltimore restaurants from here:
##https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml


library(XML)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
## Remove the s from https or error occurs
doc <- xmlTreeParse(sub("s", "", fileURL), useInternalNodes  = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]]
rootNode[[1]][[1]]

##obtain all node with the tag row and nodes between them
getNodeSet(rootNode, "//row")
##obtain all node with the tag zipcode and nodes between them
zn <- getNodeSet(rootNode, "//zipcode")
##obtain all the values of nodes in between
#xmlSApply(zn, function(x) xmlSApply(x, xmlValue))

#obtain zipcode value
zipcode <- xmlSApply(zn, xmlValue)
class(zipcode)
data.frame(zipcode)