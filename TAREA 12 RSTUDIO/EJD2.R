# Definimos los parámetros
media_A <- 55
desviacion_estandar_A <- 10
tamaño_muestra <- 1000

# Generamos la muestra A
muestra_A <- rnorm(tamaño_muestra, mean = media_A, sd = desviacion_estandar_A)

# Creamos el histograma de la muestra A
hist(muestra_A, breaks = 30, col = "lightcoral", border = "black",
     main = "Histograma de la Muestra A",
     xlab = "Valores", ylab = "Frecuencia")

# Calculamos la media y la desviación estándar de Muestra A
media_calculada_A <- mean(muestra_A)
desviacion_calculada_A <- sd(muestra_A)

# Imprimimos los resultados
cat(sprintf("Media calculada de Muestra A: %.2f\n", media_calculada_A))
cat(sprintf("Desviación estándar calculada de Muestra A: %.2f\n", desviacion_calculada_A))
