getwd()
setwd("C:/Users/sidhu/OneDrive/Documents/R")
Alcohol <- read.delim("Alcohol.txt")
Alcohol
library("sqldf")
query1<-"select * from (select Year,Country ,max(Beer) from Alcohol
group by Year) as a
inner join (select Year,Country,min(Wine) from Alcohol group by Year)
as b on a.Year=b.Year"
sqldf(query1)
query2<-"select Country,(sum(Beer)+sum(Wine)+sum(Spirit))/3 as
Average from Alcohol group by Country"
sqldf(query2)
query3<-"select * from Alcohol where Country='NewZealand' and
year=(select Year from Alcohol where Country='NewZealand' and
Spirit>(select avg(Spirit) from Alcohol where Country='NewZealand'))"
sqldf(query3)
query4<-"select Year,avg(Beer),avg(Spirit),avg(Wine) from Alcohol
group by Year"
sqldf(query4)
sub_Aus<-subset(Alcohol,Alcohol$Country=="Australia")
sub_New<-subset(Alcohol,Alcohol$Country=="NewZealand")
x1<-c("Beer"=mean(sub_Aus$Beer),"Wine"=mean(sub_Aus$Wine),"S
pirit"=mean(sub_Aus$Spirit))

x2<-c("Beer"=mean(sub_New$Beer),"Wine"=mean(sub_New$Wine),"
Spirit"=mean(sub_New$Spirit))
barplot(x1, main = "Australia Alcohol Consumption")
barplot(x2, main = "New Zealand Alcohol Consumption")