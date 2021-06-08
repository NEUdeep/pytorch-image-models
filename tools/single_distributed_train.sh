#!/bin/bash

# just for reg.supremind.info/algorithmteam/suprevision/torch16:latest
apt-get install iproute2 iproute2-doc # install ip
#show ip
ip addr
cd /root/.cache
mkdir torch
cd torch
# mkdir hub
# cd hub
mkdir checkpoints

# use ali
mkdir  ~/.pip/
echo [global] > ~/.pip/pip.conf
echo index-url=https://mirrors.aliyun.com/pypi/simple/  >> ~/.pip/pip.conf
# check repo path
cd /workspace/mnt/storage/kanghaidong/video_project/image-master
nvidia-smi
export PYTHONWARNINGS='ignore:semaphore_tracker:UserWarning'
# cp checkpoint/vit/jx_vit_base_p16_384-83fb41ba.pth /root/.cache/torch/hub/checkpoints
# cp /workspace/mnt/storage/kanghaidong/video_project/image-master/checkpoint/tf_mobilenetv3_small_075-da427f52.pth /root/.cache/torch/checkpoints
ls /root/.cache/torch/checkpoints
# install
sh sotabench_setup.sh
# train start
NUM_PROC=$1
shift
# python -m torch.distributed.launch --nproc_per_node=$NUM_PROC \
#  train.py \
#  /workspace/mnt/storage/kanghaidong/FM_wubao_Data/foggy/data_v2_train+test --model tf_mobilenetv3_small_075 --img_size 448 -b 64 --sched cosine --epochs 200 --lr 0.01 --train_split 'train' --val_split 'test' \
#   "$@"
#python -m torch.distributed.launch --nproc_per_node=$NUM_PROC \
# train.py \
# /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model tf_mobilenetv3_small_075 --img_size 224 -b 64 --sched cosine --epochs 200 --lr 0.01 --train_split 'train' --val_split 'val' \
#  "$@"

python -m torch.distributed.launch --nproc_per_node=$NUM_PROC \
train.py \
/workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model swin_tiny_patch4_window7_224 --img_size 224 -b 64 --sched cosine --epochs 200 --lr 0.01 --train_split 'train' --val_split 'val' \
 "$@"