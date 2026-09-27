## Nama: Wanita Cahya Kasih
## NIM: 3338250010
## Tugas 4 Komputasi Statistika

# Soal 1. Banyak pelanggan dalam 1 jam
# Rata-rata pelanggan = 3 orang /jam
lambda <- 3

# Mencari peluang pelanggan datang dalam minimal 5 orang
# P(X >= 5) = 1 - P(X <= 4)
p <- 1 - ppois(4, lambda)
p

# PMF
x <- 0:12
pmf <- dpois(x, lambda)
plot(x, pmf, type = "h", lwd = 3,
     main = "Distribusi poisson (λ=3)",
     xlab = "Jumlah pelanggan",
     ylab = "P(X = x)"
)

# Soal 2. Pengambilan bola merah tanpa pengembalian
N <- 100 # ukuran populasi
K <- 20 # jumlah bola merah
n <- 10 # ukuran sampel

# Domain k 
k <- seq(from = max(0, n + K - N),
         to = min(n, K)
)

# PMF
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

plot(k, pmf, type = "h", lwd = 3,
     main = "Distribusi hipergeometrik",
     xlab = "Banyak bola merah yang terambil",
     ylab = "P(X = k)"
)

# Simulasi pengembalian sampel
m <- 10000
hasil <- rhyper(m, m = K, n = N - K, k = n)
mean(hasil)
n * K / N

# Soal 3. Simulasi percobaan binomial
# Menentukan banyak percobaan dan peluang sukses
n <- 15 #jumlah percobaan
p <- 0.4 #peluang sukses
m <- 1000 #banyak simulasi

# Simulasi 1000 percobaan binomial
set.seed(2025)
hasil <- rbinom(m, size = n, prob = p)
head(hasil, n = 10)

# Histogram simulasi
hist(hasil,
     breaks = seq(-0.5, n + 0.5, by = 1),
     probability = TRUE,
     main = "Hasil simulasi binomial",
     xlab = "Jumlah sukses",
     ylab = "Probabilitas")

# PMF
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
data.frame(x = x, P = pmf)

points(x, pmf, pch = 16)
lines(x, pmf, type = "h", lwd = 3)

# Rata-rata simulasi dengan nilai harapan
mean(hasil)
n * p
