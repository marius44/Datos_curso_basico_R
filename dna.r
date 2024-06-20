# Calculos de extraccion de DNA
# JUNIO 2024
# LMHS

#Cargar datos
extraccion <- read.csv(file = "D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/Sets de datos/DNA.csv")

#structure
str(extraccion)

# head
head(extraccion)

# Ver tabla completa
View(extraccion)

# COnvertir a factor
extraccion$Analista <- as.factor(extraccion$Analista)
extraccion$Kit.usado <- as.factor(extraccion$Kit.usado)
extraccion$Tipo_de_muestra <- as.factor(extraccion$Tipo_de_muestra)
extraccion$Organismo <- as.factor(extraccion$Organismo)

# revisar nueva estructura
str(extraccion)

plot(extraccion)

#histograma
hist(extraccion$Concentracion.ng.uL., main="Histograma conc",
     xlab = "concentración ng/uL")

# histograma calidad
hist(extraccion$A260.A280, main="Histo calidad",
     xlab = "A260/A280")

# Extraer info de marcas
marca <- extraccion[,2:7]

str(marca)

# marca vs pureza
plot(marca$Kit.usado, marca$A260.A280, main="Marca vs calidad",
     xlab="Marca", ylab="A260/280")

#X= marca
#y= conce


plot(marca$Kit.usado, marca$Concentracion.ng.uL., main="Marca vs calidad",
     xlab="Marca", ylab="A260/280")

# analista
plot(extraccion$Analista, extraccion$A260.A280, 
     main="Calidad por analit", xlab="analista", ylab="A260")

