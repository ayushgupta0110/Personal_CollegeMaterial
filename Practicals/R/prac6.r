# a)
iris
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)
summary(iris$Species)

# b)
with(subset(iris, Species == "setosa"), plot(Sepal.Length,
                                             Sepal.Width))

# c)
with(subset(iris, Species == "setosa"), plot(Sepal.Length, Sepal.Width,
                                             xlab = "Sepal Length", ylab = "Sepal Width", main = "Setosa"))

# d)
lattice::histogram(iris$Petal.Length)

# e)
with(subset(iris, Species == "versicolor"), boxplot(Petal.Width))