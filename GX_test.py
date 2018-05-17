import tensorflow as tf
import numpy as np

array1 = np.array([[1, 2], [3, 4]], dtype=np.float32)
array2 = np.array([[5, 6], [7, 8]], dtype=np.float32)

def add_minus_dot(array1, array2):
    return array1 + array2, array1 - array2, np.dot(array1, array2)

y1, y2, y3 = tf.py_func(add_minus_dot, [array1, array2], [tf.float32]*3)

with tf.Session() as sess:
    _y1, _y2, _y3 = sess.run([y1, y2, y3])
    print (_y1)
    print
    print (_y2)
    print
    print (_y3)