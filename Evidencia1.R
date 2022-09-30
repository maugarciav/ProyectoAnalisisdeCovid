#Instalamos los paquetes y llamamos a las librerias
install.packages("seqinr")
install.packages("tidyverse")
library(ggplot2)
library("seqinr")

#DIRECTORIO DE TRABAJO
getwd()
setwd("/Users/")
setwd("/Users/maugarcia/Documents/Universidad/segundo semestre/CompuR/Evidencia1/")

#Asignar a variables

Arizona <- read.fasta("Arizona.fasta")
Chihuahua <- read.fasta("Chihuahua.fasta")
Florida <- read.fasta("Florida.fasta")
Hermosillo <- read.fasta("Hermosillo.fasta")
Houston <- read.fasta("Houston.fasta")
Mochis <- read.fasta("LosMochis.fasta")
Mexicali <- read.fasta("Mexicali.fasta")
Tijuana <- read.fasta("Tijuana.fasta")

#Tamaño
length(Arizona[[1]])
length(Chihuahua [[1]])
length(Florida[[1]])
length(Hermosillo[[1]])
length(Houston[[1]])
length(Mochis[[1]])
length(Mexicali[[1]])
length(Tijuana[[1]])

#Contenido de GC
GC(Arizona[[1]])*100
GC(Chihuahua[[1]])*100
GC(Florida[[1]])*100
GC(Hermosillo[[1]])*100
GC(Houston[[1]])*100
GC(Mochis[[1]])*100
GC(Mexicali[[1]])*100
GC(Tijuana[[1]])*100

#Complementaria (solo se impirme los primeros 5 con la funcion head)
ArizonaComp <- (comp(Arizona[[1]]))
head(ArizonaComp)
ChihuahuaComp <- (comp(Chihuahua[[1]]))
head(ChihuahuaComp)
FloridaComp <- (comp(Florida[[1]]))
head(FloridaComp)
HermosilloComp <- (comp(Hermosillo[[1]]))
head(HermosilloComp)
HoustonComp <- (comp(Houston[[1]]))
head(HoustonComp)
MochisComp <- (comp(Mochis[[1]]))
head(MochisComp)
MexicaliComp <- (comp(Mexicali[[1]]))
head(MexicaliComp)
TijuanaComp <- (comp(Tijuana[[1]]))
head(TijuanaComp)

#Tabla de comparacion
tabla_base <- data.frame(Adenina =1:8, Citosina = 1:8, Guanina = 1:8, Timina = 1:8)
rownames(tabla_base) <- c("Arizona","Chihuahua", "Florida", "Hermosillo","Houston","LosMochis","Mexicali","Tijuana")
tabla_base[1,] <- count (Arizona[[1]],1)
tabla_base[2,] <- count (Chihuahua[[1]],1)
tabla_base[3,] <- count (Florida[[1]],1)
tabla_base[4,] <- count (Hermosillo[[1]],1)
tabla_base[5,] <- count (Houston[[1]],1)
tabla_base[6,] <- count (Mochis[[1]],1)
tabla_base[7,] <- count (Mexicali[[1]],1)
tabla_base[8,] <- count (Tijuana[[1]],1)

tabla_base

#Graficamos
ArizonaGrafica <- as.data.frame(count(seq = Arizona[[1]], wordsize = 1))
ggplot(ArizonaGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Arizona") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

ChihuahuaGrafica <- as.data.frame(count(seq = Chihuahua[[1]], wordsize = 1))
ggplot(ChihuahuaGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Chihuahua") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

FloridaGrafica <- as.data.frame(count(seq = Florida[[1]], wordsize = 1))
ggplot(FloridaGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Florida") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

HermosilloGrafica <- as.data.frame(count(seq = Hermosillo[[1]], wordsize = 1))
ggplot(HermosilloGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Hermosillo") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

HoustonGrafica <- as.data.frame(count(seq = Houston[[1]], wordsize = 1))
ggplot(HoustonGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Houston") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

MochisGrafica <- as.data.frame(count(seq = Mochis[[1]], wordsize = 1))
ggplot(MochisGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Mochis") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

MexicaliGrafica <- as.data.frame(count(seq = Mexicali[[1]], wordsize = 1))
ggplot(MexicaliGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Mexicali") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')

TijuanaGrafica <- as.data.frame(count(seq = Tijuana[[1]], wordsize = 1))
ggplot(TijuanaGrafica, aes(Var1, Freq, fill=Var1)) + geom_bar(stat = "identity") + labs(fill = "Tijuana") +
  scale_fill_hue(labels = c("Adenina", "Citosina", "Guanina", "Timina")) + labs(x='Bases ADN', y='Cantidad')







