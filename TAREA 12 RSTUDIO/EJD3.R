media <- 50
desviacion_estandar <- 12
valor_limite <- 70

p_menor_igual_70 <- pnorm(valor_limite, mean = media, sd = desviacion_estandar)

p_mayor_70 <- 1 - p_menor_igual_70

cat(sprintf("La probabilidad de que un valor sea mayor que 70 es: %.4f\n", p_mayor_70))
