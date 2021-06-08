#!/bin/bash
cd /workspace/mnt/storage/kanghaidong/cloud_project/new_study/pytorch-image-models
pip install dataclasses
NUM_PROC=$1
# chmod +x /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts
# chmod -R 777 /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts

# shift
python -m torch.distributed.launch --nproc_per_node=$NUM_PROC \
train.py \
# /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model swin_tiny_patch4_window7_224 --img-size 224 -b 64 --sched cosine --epochs 300 --lr 5e-6 --warmup-lr 5e-7 --train_split 'train' --val_split 'val' \
# /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model swin_tiny_patch4_window7_224 --img-size 224 -b 64 --sched cosine --epochs 300 --lr 5e-2 --warmup-lr 5e-3 --train_split 'train' --val_split 'val' \
#  "$@"
/workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts --model tf_efficientnet_l2_ns_475 --img-size 475 -b 32 --sched cosine --epochs 300 --lr 5e-2 --warmup-lr 5e-3 --train_split 'train' --val_split 'val' \
 "$@"