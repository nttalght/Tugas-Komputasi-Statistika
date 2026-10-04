## Nama: Wanita Cahya Kasih
## NIM: 3338250010
## Tugas 5 Komputasi Statistika

# 1. Sebaran Eksponensial
# Peluang waktu tunggu lebih dari 5 menit
# P(X > 5)

r <- 5 # rata-rata waktu tunggu
x <- 5 # batas waktu tunggu
lambda <- 1/r
peluang <- pexp(x, rate = lambda, lower.tail = FALSE)
peluang

# 2. Sebaran Uniform
# Varians waktu tunggu kereta
a <- 0 # batas bawah
b <- 20 # batas atas
r <- (a+b)/2 # rata-rata
r
varians <- (b - a)^2 / 12
varians

# 3. Sebaran Eksponensial
# Peluang sensor rusak sebelum 5 tahun
# P(X < 5)
r <- 10 # rata-rata masa pakai
x <- 5 # batas usia sensor
lambda <- 1/r
peluang <- pexp(x, rate = lambda, lower.tail = TRUE)
peluang

# 4. Sebaran Normal
# Proporsi kemasan kopi dengan berat kurang dari 240 gram
r <- 250 # rata-rata berat
sigma <- 5 # simpangan baku
x <- 240 # batas underweight
# Z-score
z <- (x - r) / sigma
z
# P(X < 240)
proporsi <- pnorm(x, mean = r, sd = sigma)
proporsi
