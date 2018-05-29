import tensorflow as tf
import numpy as np


# tf.stack([tf.range(16), ])
a = np.stack(range(2), [[3],[4]], axis=1)
print (a)