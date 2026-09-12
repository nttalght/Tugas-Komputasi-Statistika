## Nama: Wanita Cahya Kasih
## NIM: 3338250010
## Komputasi Statistika


library(dplyr)
data(iris)

# 1. Menampilkan Sepal.Length 
iris$Sepal.Length

# 2. Menampilkan tipe data tiap kolom
sapply(iris, class)

# 3. Membuat variabel turunan
iris <- iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )
iris

# 4. Mengubah variabel turunan menjadi sepal
iris <- iris %>%
  rename(sepal = turunan)
iris

# 5. Mengambil data sepal bernilai Besar dari species virginica
virginica_besar <- iris %>%
  filter(sepal == "Besar", Species == "virginica")
virginica_besar

# 6. Mengecek jumlah species
table(iris$Species)

# 7. Memecah data iris menjadi 3 dataframe
iris_setosa <- iris %>%
  filter(Species == "setosa")
iris_setosa

iris_versicolor <- iris %>%
  filter(Species == "versicolor")
iris_versicolor

iris_virginica <- iris %>%
  filter(Species == "virginica")
iris_virginica

# 8. Mengurutkan setiap dataframe
iris_setosa <- iris_setosa %>%
  arrange(Sepal.Width)
iris_setosa

iris_versicolor <- iris_versicolor %>%
  arrange(Sepal.Width)
iris_versicolor

iris_virginica <- iris_virginica %>%
  arrange(Sepal.Width)
iris_virginica

