getwd()
setwd("C:/Users/Ayush Gupta/Desktop/B.Sc 4th Sem/R Programming/Practical_R")

td<-data.frame(read.csv("toy_dataset.csv"))
str(td)

nrow(subset(td,City=="New York City"))
colnames(td)

tail(td[order(td$Income),])

nrow(subset(td,Income > mean(Income)))

max(subset(td, Gender == "Female")$Income)

td[sample(1:nrow(td),10),]

attach(td)
detach(td)

