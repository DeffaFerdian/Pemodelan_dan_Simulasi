data <- read.csv(file.choose(), header = T, sep = ";")

View(data)

names(data)

x <- data$bulan
y <- data$jumlah

library(ggplot2)

plot(x,y)

plot(x, y, xlab = "Bulan", ylab = "Jumlah Penumpang")

abline(lm(y~x))

cor(y,x)

cor.test(y,x)

mod <- lm(y~x)

mod

summary(mod)
