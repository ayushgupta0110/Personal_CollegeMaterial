getwd()
setwd("C:/Users/Shreyan/Desktop/Semester 4/R prog sem 4/Practicals")

# (a)
td <- data.frame(read.csv(("toy_dataset.csv")))
td
View(td)
str(td)

# (b)
attach(td)

# (c)
nrow(subset(td, City == "New York City"))

# (d)

# (e)
nrow(subset(td, Income > mean(Income)))

# (f)
max(subset(td, Gender == "Female")$Income)

# (g)
td[sample(1:150000, 10),] # select random 10 rows out of 150k total rows

# (h)
detach(td)
