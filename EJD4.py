import numpy as np

mean = 0
std_dev = 1
sample_size = 1000

sample = np.random.normal(loc=mean, scale=std_dev, size=sample_size)

values_in_range = ((sample >= -1) & (sample <= 1)).sum()
percentage_in_range = (values_in_range / sample_size) * 100

print(f'Porcentaje de valores entre -1 y 1: {percentage_in_range:.2f}%')
