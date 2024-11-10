media <- 30
desviacion_estandar <- 5
tamaño_muestra <- 200

muestra <- rnorm(tamaño_muestra, mean = media, sd = desviacion_estandar)

resultado_prueba <- shapiro.test(muestra)

cat(sprintf("Estadístico W de Shapiro-Wilk: %.4f\n", resultado_prueba$statistic))
cat(sprintf("Valor p: %.4f\n", resultado_prueba$p.value))

if (resultado_prueba$p.value > 0.05) {
  cat("La muestra sigue una distribución normal (no se rechaza la hipótesis nula).\n")
} else {
  cat("La muestra no sigue una distribución normal (se rechaza la hipótesis nula).\n")
}
