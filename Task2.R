fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "NaturalGas.xlsx", mode = "wb")
dateDownloaded<-date()
library(openxlsx)
dat<-read.xlsx("NaturalGas.xlsx", sheet = 1, rows = as.numeric(18:23), cols = as.numeric(7:15))
sum(dat$Zip*dat$Ext,na.rm=T)