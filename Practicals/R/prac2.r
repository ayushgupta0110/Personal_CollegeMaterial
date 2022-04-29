aq <- airquality
aq
View(aq)

# (a)
str(aq)

# (b)
nrow(aq) # no. of Rows (Observations)
ncol(aq) # no. of Columns (Variables)

# (c)
clean_aq <- na.omit(airquality) # entire row will get deleted, if any entry is NA there
View(clean_aq)
nrow(clean_aq) # no. of COMPLETE rows (no NA values here)

# (d)
subset(aq, Temp >= 70 & Temp <= 80) 

# (e)
nrow(subset(aq, Month == 5)) # count of rows, having Month = 5

# (f) 1st method
aq[c(1:10), ] # first 10 rows (rows 1 to 10)

# (f) 2nd method
head(aq) # here, it will give only the first 6 rows
head(aq, 10) # but, it will give first 10 rows

# (g)
summary(aq$Wind) # stats. summary of WIND var.

# (h)
aq[order(aq$Temp, decreasing = TRUE), ]

# (i)
aq <- airquality
aq[154,] <- list(25, 225, 15, 75, 89) # last row is 153, so we are inserting 154th row, but no columns
str(aq)
View(aq)
