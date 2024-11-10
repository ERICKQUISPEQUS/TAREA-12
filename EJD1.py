import numpy as np
import matplotlib.pyplot as plt
mean = 60
std_dev = 15
sample_size = 1000

sample = np.random.normal(loc=mean, scale=std_dev, size=sample_size)

plt.hist(sample, bins=30, edgecolor='black')
plt.title('Histograma de la Muestra Generada')
plt.xlabel('Valores')
plt.ylabel('Frecuencia')
plt.show()

calculated_mean = np.mean(sample)
calculated_std_dev = np.std(sample)

print(f'Media calculada: {calculated_mean:.2f}')
print(f'Desviación estándar calculada: {calculated_std_dev:.2f}')