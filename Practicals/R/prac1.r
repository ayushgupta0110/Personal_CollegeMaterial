# Practical 1
# a)
nvec <- c(1, 2, 3, 4, 5)
nvec
cvec <- c("a", "b", "c", "d", "e")
cvec
ivec <- c(1L, 2L, 3L, 4L, 5L)
ivec
class(nvec)
class(cvec)
class(ivec)
# b)
x <- 1:5
y <- 1:10
2*x + y -3
# c)
nOdd <- seq.int(101, 500, 2)
nOdd
# d)
mean(nOdd)
sd(nOdd)
# e)
lst <- list(c(1:5), array(1:10, c(5,2)), list("a", "b", "c"))
lst
# f)
m1 <- matrix(1:12, 3, 4)
m2 <- matrix(1:12, 4, 3)
matmul <- m1 %*% m2
matmul
# g)
rowMeans(matmul)
colMeans(matmul)
# h)
dim(m1) <- c(4,3)
rbind(m1, m2)
cbind(m1, m2)
# i)
mat1 <- matrix(10:21, c(3,4))
mat1
mat1 <- mat1[-1,]
mat1