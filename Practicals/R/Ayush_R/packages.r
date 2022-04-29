install.packages("devtools")


library(usethis)
library(devtools)
library(roxygen2)
getwd()
setwd("C:/Users/Ayush Gupta/Desktop/B.Sc 4th Sem/R Programming/Practical_R")

nMean <- function(x){
  len <- length(x)
  sm <- sum(x)
  sm/len
}
nMean(1:5)

nMed <- function(x){
  x <- sort(x)
  if((length(x)%%2)==0){
    return(x[length(x)/2] + x[length(x)/2 +1] /2)
  }
  else{
    return(x[length(x)/2 + 0.5])
  }
}
nMed(1:9)

nVar <- function(x){
  var(x)
}

nSD <- function(x){
  sd(x)
}

nHist <- function(x){
  hist(x)
}

package.skeleton("pkg8",c("nMean","nMed","nVar","nSD","nHist"))

roxygenize("pkg8")
rm(list = c("nHist", "nMean", "nMed", "nSD", "nVar"))

check("pkg8")
build("pkg8")
release("pkg8")
