# Description: Basic introduction to R
# Author: Hafidz NDP
# Date: 2021-05-22

#creat Data
dir.create("scripts")#Membuat folder/direktori
file.create("scripts/Intro R")#Membuat file dalam scripts
file.edit("scripts/Intro R")#open file Intru R

# Panel in Rstudio
# Console     : To Execute Data
# Enviroment  : To Save Variabel or objek
# Connection  : To Combine w/ other 
# Files       : File in Directori/folder
# Plot        : Visualization data
# Package/library : set of function to coding


# define variables
# tip: type Alt + - (dash) to make assignment operator <- 
# type Ctrl + Enter to execute the code line
# Creat new Churn : Ctrl + Alt + I

# numeric variable
A <- 3


# delete variable
rm(A)

# character (string) variable
strg1 <- "my first day"
strg2 <-'learn of data science'
strg3 <- 'hari ini belajar "Indtroduction of data science"'

# check data type
typeof(strg3)

# boolean variable (TRUE/FALSE)
a <- TRUE
b <- T
c <- FALSE
d <- F

# arithmetic operators
3 + 2 #Penjumlahan
3 - 2 #Pengurangan
3 * 2 #Perkalian
3 / 2 #Pembagian
3 ^ 2 #Perpangkatan
3 %% 2 #sisa pembagian
9 %/% 2 #Pembagian tanpa sisa

#Prioritas tertinggu
# 1 Pangkat
# 2 Perkalian,pembagian, sisa pembagian
# 3 Penambahan dan Pengurangan


# relational operators
3 < 2 #less than
3 > 2 #greater than
3 <= 2 #less than or equal to
3 >= 2 #greater than or equal to
3 == 3 #equal to
3 != 2 #not equal to

# logical operators
!TRUE #logical not
TRUE & FALSE#element-wise logical and
TRUE && FALSE #logical AND
TRUE | FALSE #element-wise logical OR
TRUE || FALSE #logical or


# vector
e<- c(2,4,6,8,10)
f<- c(1,3,5,7,9)
fvar <- c("A","B","C","D","F")

# check element data type
typeof(e)
typeof(as.integer(e))

# arithmetic operation between vectors
e + f + a

# indexing (starts with 1)
e[1] #index vector ke 1
f[2] #index vector ke 3
fvar[1:3] # index betwen
f[-3]#remove index

#jika mengambil angka tidak berurutan
indexes <- c(2,4)
myvect_num2[indexes]


# built-in functions
abs(-0.3) #absolute value
sqrt(10) #square root
ceiling(52.43) #pembulatan keatas
floor(52.93) #pembulatan kebawah
trunc(52.99) #bilangan bulat
round(10.1174,2) #pengambilan angka dibelakang koma
signif(10.1134,4)#pengambilan angka dari depan
cos(30) #Cosinus
sin(45) #Sinus
tan (45) #Tangen
log(16) #logarithm
log10(16) #common logarithm
exp(2) #
mean(1:100) #rata-rata
sd (1:10) #standar Deviasiom
median(1:99) #nilai tengah
range(1,8,3,4,7) #jarak tertinggi dan terendah
sum(e) #total
mean(e) #rata-rata
min(e) #terkecil
max(e) #terbesar
seq(1,99,4) #kelipatan
rep (5:7,2) #Pengulangan

# create vector of sequence of number using seq()
# tip: seeking help/documentation of a function
help(seq)
?seq

seq(10)
seq(1,10)
seq(0,10,2)

# install packages
# best practice: write this command directly on Console
install.packages("ggplot2") #popular visualization library

# load installed packages
library(ggplot2)

mpg

# test visualization
ggplot(mpg, aes(x = class, y = hwy)) +
  geom_boxplot() + 
  geom_jitter(shape=16, position = position_jitter(0.2))
help(ggplot)

# mini exercise
# 1. 1+2+3+...+1000=???
sum(1:1000)

# 2. 3+6+9+...+999=???
sum(seq(3,999,3))

# 3. average of the first 100 elements in sequence 2)
v <- seq(3,999,3)
mean(v[1:100])

mean(seq(3,999,3)[1:100])
# 4. average of the last 100 elements in sequence 2)
# hint: help(tail)
mean(tail(seq(3,999,3),100))