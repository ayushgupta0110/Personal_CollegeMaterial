getwd()
setwd("C:/Users/Ayush Gupta/Desktop/B.Sc 4th Sem/R Programming/Practical_R")

install.packages("DBI")
install.packages("RSQLite")
install.packages("dplyr")

library(DBI)
library(RSQLite)
library(dplyr)

#creating database
q4db<-dbConnect(SQLite(),"Q4.sqlite")
dbListTables(q4db)

#creating Table
dbGetQuery(q4db,"CREATE TABLE STUDENT(
           ROLL INT PRIMARY KEY,
           NAME VARCHAR2(20),
           COURSE VARCHAR2(20))")

dbListTables(q4db)

dbGetQuery(q4db,"SELECT * FROM STUDENT")
dbGetQuery(q4db,"INSERT INTO STUDENT VALUES(1,'AYUSH GUPTA','BSC')")
dbGetQuery(q4db,"INSERT INTO STUDENT VALUES(2,'AKASH KUMAR','BMS')")
dbGetQuery(q4db,"INSERT INTO STUDENT VALUES(3,'AMIT MAHAJAN','BSC')")
dbGetQuery(q4db,"INSERT INTO STUDENT VALUES(4,'SHREYAN SARKAR','BFIA')")
dbGetQuery(q4db,"INSERT INTO STUDENT VALUES(5,'AKASH SINGH','BSC')")

dbGetQuery(q4db,"SELECT * FROM STUDENT")

dbGetQuery(q4db,"DELETE FROM STUDENT")
dbGetQuery(q4db,"DROP TABLE STUDENT")

dbDisconnect(q4db)
