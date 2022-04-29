
getwd()
setwd("C:/Users/Ayush Gupta/Desktop/B.Sc 4th Sem/R Programming/Practical_R")

toydf <- read.csv("toy_dataset.csv",stringsAsFactors = TRUE)

#############################################
#       MEASURES OF CENTRAL TENDENCY
#       1. MEAN/AVERGAE
#       2. MEDIAN
#       3. MODE
#############################################

mean(toydf$Income, na.rm = TRUE)

median(toydf$Age)

#mode
#1. table() gives the frequency of individual elements
#2. sort() arrange the frequencies in an order 
sort(table(toydf$Age),decreasing = T)[1]




################################################
#         MEASURES OF DISPERSIOM
#         1. STANDARD DEVIATION
#         2. VARIANCE
###############################################

sd(toydf$Age)

var(toydf$Age)



#####################################################
#       DIFFERENT WAYS OF FINDING MINIMUM & MAXIMUM
#       1. MIN & MAX
#       2. PMIN & PMAX
#       3. RANGE
#####################################################
x<- sample(1:20,10)
y <- sample(1:20,10)

x;min(x)
y;max(y)

# parallel minimum
x;y;pmin(x,y)

#parallel maximum
x;y;pmax(x,y)

# gives the minimum and maximum value in x
range(x)

##################################################
#         SUMMARY & QUANTILES
#         1. SUMMARY
#         2. QUANTILE
#         3. IQR
#         4. FIVENUM
#################################################

#summary on the data frame
summary(toydf)

#summary of a single column
summary(toydf$Age)

quantile(toydf$Age)

#
quantile(toydf$Age,c(0.9,0.95,1))

#IQR - Inter Quantile range
IQR(toydf$Age)

# same as quantile but less flexible 
fivenum(toydf$Age)


################################################
#     PLOTTING USING BASE GRAPHICS
#     1. SCATTERPLOT
#     2. LINE PLOT
#     3. HISTOGRAM
#     4. BOXPLOT
#     5. BAR CHARTS
###############################################
x
y
plot(x,y)

a<-1:10
a2<-a^2
plot(a,a2,
     main = "Sqaure of number",
     xlab = "Numbers",
     ylab = "Squares of Numbers",
     pch =2,
     col="red"
     )


###############################################
#           LINE PLOT
##############################################
plot(a,a2,type = "l",col="blue")

plot(a,a2,type = "l",col="green",lwd=1,lty=4)

###############################################
#           HISTOGRAM
################################################
hist(toydf$Income,
     col = "blue",
     border = TRUE,
     breaks = 5
    )


###############################################
#
###############################################

cities<-unique(toydf$City)
cities

d <- tapply(toydf$Income, toydf$City, min)
d
barplot(d,main="City-wise Lowest Income",
        ylim = range(toydf$Income))
?barplot

###############################################
#           BOX PLOT
###############################################

#displays the summary function in the form of graph
boxplot(toydf$Income)

