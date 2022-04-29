airquality
str(airquality)

nrow(airquality)

clean_airquality <- na.omit(airquality)
sum(clean_airquality$Ozone)

clean_airquality[1,]
nrow(clean_airquality)

subset(airquality, Temp>70 & Temp<80)

nrow(subset(airquality,Month==5))

head(airquality,10)

summary(airquality$Wind)

help("order")

x<- c(23,12,1,45,6)
order(x,decreasing = TRUE)
x[order(x,decreasing = TRUE)]
airquality[order(airquality$Temp,decreasing = TRUE),]


#adding a row

aq <- airquality
aq
aq[154,] <- list(25,225,15,75,9,30)
aq

#adding column
vect2 <- c(1:154)
aq[,7] <- vect2
aq


