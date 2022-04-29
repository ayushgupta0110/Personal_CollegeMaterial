ds<-iris
ds
summary(ds)

install.packages("lattice")
library(lattice)

levels(ds$Species)


with((subset(iris,Species=="setosa")),plot(Sepal.Length,Sepal.Width))

with((subset(iris,Species=="setosa")),plot(Sepal.Length,Sepal.Width,
                                           xlab="Sepal Length",
                                           ylab="Sepal width",
                                           main="SETOSA"))

hist(ds$Petal.Length)

lattice::histogram(iris$Petal.Length)

with(subset(iris,Species=="versicolor"),boxplot(Petal.Width))
