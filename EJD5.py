import numpy as np

mean = 60
std_dev = 10
sample_size = 150

sample = np.random.normal(loc=mean, scale=std_dev, size=sample_size)

transformed_sample = (sample - mean) / std_dev

transformed_mean = np.mean(transformed_sample)
transformed_std_dev = np.std(transformed_sample)

print(f'Media de la muestra transformada: {transformed_mean:.2f}')
print(f'Desviación estándar de la muestra transformada: {transformed_std_dev:.2f}')