import numpy as np
import matplotlib.pyplot as plt
import scipy.stats as stats

mean = 75
std_dev = 8
sample_size = 500

sample = np.random.normal(loc=mean, scale=std_dev, size=sample_size)

confidence_level = 0.95
sample_mean = np.mean(sample)
sample_std_error = stats.sem(sample)  # Error estándar de la media
interval = stats.t.interval(confidence_level, df=sample_size-1, loc=sample_mean, scale=sample_std_error)

plt.hist(sample, bins=30, edgecolor='black', alpha=0.7, label='Muestra')
plt.axvline(interval[0], color='red', linestyle='--', label=f'Límite inferior ({interval[0]:.2f})')
plt.axvline(interval[1], color='green', linestyle='--', label=f'Límite superior ({interval[1]:.2f})')
plt.axvline(sample_mean, color='blue', linestyle='-', label=f'Media de la muestra ({sample_mean:.2f})')
plt.title('Histograma de la Muestra con Intervalo de Confianza al 95%')
plt.xlabel('Valores')
plt.ylabel('Frecuencia')
plt.legend()
plt.show()

print(f'Intervalo de confianza al 95%: {interval}')
