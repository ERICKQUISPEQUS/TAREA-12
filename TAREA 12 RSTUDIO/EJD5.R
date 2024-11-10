media_X <- 10
desviacion_estandar_X <- 3
media_Y <- 15
desviacion_estandar_Y <- 4
tamaño_muestra <- 100

muestra_X <- rnorm(tamaño_muestra, mean = media_X, sd = desviacion_estandar_X)
muestra_Y <- rnorm(tamaño_muestra, mean = media_Y, sd = desviacion_estandar_Y)

muestra_Z <- muestra_X + muestra_Y

media_Z <- mean(muestra_Z)
desviacion_Z <- sd(muestra_Z)

media_teorica_Z <- media_X + media_Y
desviacion_teorica_Z <- sqrt(desviacion_estandar_X^2 + desviacion_estandar_Y^2)

cat(sprintf("Media calculada de Z: %.2f\n", media_Z))
cat(sprintf("Desviación estándar calculada de Z: %.2f\n", desviacion_Z))
cat(sprintf("Media teórica de Z: %.2f\n", media_teorica_Z))
cat(sprintf("Desviación estándar teórica de Z: %.2f\n", desviacion_teorica_Z))
