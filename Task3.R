fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc<-xmlTreeParse(fileUrl, useInternalNodes = TRUE)
rootNode<-xmlRoot(doc)
