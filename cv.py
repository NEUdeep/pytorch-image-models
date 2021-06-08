# -*- coding: utf-8 -*-

import numpy as np
import cv2

print(cv2.__version__)


# img = cv2.imread('messi5.jpg',cv2.IMREAD_COLOR)#读入一副彩色图像。图像的透明度会被忽略   默认参数。
# img = cv2.imread('messi5.jpg', cv2.IMREAD_GRAYSCALE)# Load an color image in grayscale 灰度
# img = cv2.imread('./messi5.jpg',cv2.IMREAD_UNCHANGED)#包括图像的 alpha 通道
img = cv2.imread('/workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts/val/50029/2648100.jpg', cv2.IMREAD_COLOR)
print(img.shape)
# img = cv2.resize(img, (224, 224))

# img.I
# AttributeError: 'numpy.ndarray' object has no attribute 'I'

#
rows,cols,ch=img.shape
print('行/高:',rows,'列/宽:',cols,'通道:',ch)