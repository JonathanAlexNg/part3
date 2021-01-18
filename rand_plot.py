import random
import numpy as np
import matplotlib.pyplot as plt

# Number generation and Number(n) List
numbers = 10
x = [random.randint(0, 100) for i in range(numbers)]
y = range(1, 11)

# Plotting
plt.figure()
plt.scatter(y, x)
plt.axis([0, 10, 1, 100])
plt.xlabel("Number (n) Generated")
plt.ylabel("Value of number")
plt.xticks(np.arange(0, max(y), 1))
plt.show()

