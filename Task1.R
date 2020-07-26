fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "Week1.csv")
dateDownloaded<-date()
data<-read.csv("Week1.csv")
good<-complete.cases(data$VAL)
Propval<-data$VAL[good]
count<-0
for (i in 1:length(Propval)) {
  if (Propval[i]==24L) {
    count<-count+1
  }
}