# Vector numeric
v_num <- c(1.5, 2.5, 3.5)
v_num

# Vector integer
vector_integer <- c(10L, 20L, 30L)
vector_integer

# Vector logical
vector_logcal <- c(FALSE, TRUE, FALSE)
vector_logcal

# Vector character
v_char <- c("Komputasi", "R", "Statistika")
v_char

# Matrix 4x4
m <- matrix(1:16, nrow = 4, ncol = 4)
m

# Array 4D
a <- array(1:16, dim = c(2,2,2))
a

# Membuat data frame
df <- data.frame(
  Nama = c("Andi", "Dina", "Eka"),
  Umur = c(25, 20, 23),
  Lulus = c(TRUE, FALSE, TRUE)
)
df

# Membuat list
mylist <- list(
  baris = c(1, 2, 3, 4),
  kolom = c(5, 6, 7, 8),
  mat = matrix(1:16, nrow = 4),
  df = data.frame(
    Nama = c("Andi", "Budi", "Citra", "Dina"),
    Nilai = c(80, 85, 90, 95),
    Lulus = c(TRUE, TRUE, TRUE, TRUE),
    Aktif = c(TRUE, FALSE, TRUE, FALSE)
  ),
  isi = list(
    mat = matrix(1:16, nrow = 4),
    arr = array(1:16, dim = c(2, 2, 2, 2)),
    df = data.frame(
      Nama = c("Andi", "Budi", "Citra", "Dina"),
      Nilai = c(80, 85, 90, 95),
      Lulus = c(TRUE, TRUE, TRUE, TRUE),
      Aktif = c(TRUE, FALSE, TRUE, FALSE)
    ),
    baris = c(1, 2, 3, 4)
  )
)

mylist