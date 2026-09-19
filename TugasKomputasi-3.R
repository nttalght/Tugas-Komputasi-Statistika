## Nama: Wanita Cahya Kasih
## NIM: 3338250010
## Komputasi Statistika


data(airquality)
str(airquality)

# Histogram variabel Wind
hist(airquality$Wind,
     breaks = (0:6) * 5,
     probability = TRUE,
     xlab = "Wind (mph)",
     main = "Histogram Wind",
     col = "lightblue")

dens <- density(airquality$Wind)
lines(dens, col = "darkblue", lwd = 2)


# Boxplot & Stem and Leaf Wind
boxplot(airquality$Wind,
        horizontal = TRUE,
        main = "Boxplot Wind",
        xlab = "Wind (mph)",
        col = "lightgreen")

stem(airquality$Wind)

# Scatterplot 
plot(Ozone ~ Wind,
     data = airquality,
     pch = 19,
     main = "Scatterplot Ozone terhadap Wind",
     xlab = "Wind (mph)",
     ylab = "Ozone")

rug(airquality$Wind)
rug(airquality$Ozone, side = 2)
