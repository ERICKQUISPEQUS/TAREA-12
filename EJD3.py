import numpy as np

mean = 100
std_dev = 20
sample_size = 100

sample = np.random.normal(loc=mean, scale=std_dev, size=sample_size)

percentile_90 = np.percentile(sample, 90)

print(f'El percentil 90 de la muestra es: {percentile_90:.2f}')
