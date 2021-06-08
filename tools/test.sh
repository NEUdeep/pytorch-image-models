#!/bin/bash
# python validate.py \
#          /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model vit_base_patch16_384 --num-gpu 2 --checkpoint checkpoint/vit/jx_vit_base_p16_384-83fb41ba.pth --img_size 384



python validate.py \
         /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model swin_tiny_patch4_window7_224 --num-gpu 2 --checkpoint checkpoint/swin_tiny_patch4_window7_224.pth --img_size 384



python validate.py \
         /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model tf_efficientnet_b7_ns --num-gpu 2 --checkpoint checkpoint/pre-models/tf_efficientnet_b7_ns-1dbc32de.pth --img_size 600 --batch-size 64


python validate.py \
         /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model tf_efficientnet_l2_ns_475 --num-gpu 2 --checkpoint checkpoint/pre-models/tf_efficientnet_l2_ns_475-bebbd00a.pth --img_size 475 --batch-size 32



python validate.py /workspace/mnt/storage/kanghaidong/FM_wubao_Data/foggy/data_v2_train+test --model tf_mobilenetv3_small_075 --num-gpu 2 --checkpoint output/train/20210302-181107-tf_mobilenetv3_small_075-224/model_best.pth.tar --img-_ize 224 --split test

python validate.py /workspace/mnt/storage/kanghaidong/FM_wubao_Data/foggy/data_v2_train+test --model vit_base_patch16_224 --num-gpu 2 --checkpoint output/train/20210301-213112-vit_base_patch16_224-224/model_best.pth.tar --img_size 224 --split test

