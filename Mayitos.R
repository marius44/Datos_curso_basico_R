# Mayitos
# Junio 2024
# Poliinterpares 2024
# LMHS

# Librerias usadas
install.packages("data.table")
library("data.table")


# Leer el archivo CSV que contiene los datos de las parcelas
mayitos <- read.csv("D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/Sets de datos/mayitos_1.csv", header = TRUE)


# Ver la estructura del conjunto de datos
str(mayitos)

# Visualizar el conjunto de datos en una nueva ventana de visualización
View(mayitos)

# Mejor usamos la libreria data.table
mayitos <- fread("D:/Proyectos_y_revisiones/Académicos/Curso_R_poliinterpares/Sets de datos/mayitos_1.csv")


# Ver la estructura del conjunto de datos
str(mayitos)

# Visualizar el conjunto de datos en una nueva ventana de visualización
View(mayitos)


# Convertir la columna 'Parcela' en un factor (categoría)
mayitos$factor_parcela <- as.factor(mayitos$Parcela)

# Ver la estructura del conjunto de datos después de la conversión
str(mayitos)

# Ver las primeras filas del conjunto de datos
head(mayitos)

# Crear un gráfico de caja para la longitud de la hoja ('long_hoja') por parcela
plot(mayitos$factor_parcela, mayitos$long_hoja)

# Realizar una prueba t para comparar la longitud de la hoja entre diferentes parcelas
# La prueba t evalúa si las medias de dos grupos son significativamente diferentes entre sí
t.test(mayitos$long_hoja ~ mayitos$Parcela)

# Conclusión: la prueba t indica si hay una diferencia significativa en la longitud de la hoja entre las parcelas
