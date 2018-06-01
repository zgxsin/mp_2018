import tensorflow as tf
import numpy as np


a = tf.constant( [1, 2, 3, 4, 5, 6, 7, 8, 9])
# tensor ‘t’ has shape [9]
b = tf.reshape(a, [3, 3])

#如果shape有元素[-1],表示在该维度打平至一维
# -1 将自动推导得为 9:
c = tf.reshape(a, [1, -1])

with tf.Session() as sess:
    b_, c_ = sess.run([b, c])

    print(b_)
    print(c_)