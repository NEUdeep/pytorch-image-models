#!/bin/bash
# just for reg.supremind.info/yankai/deep-reid:v0.4
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
cp checkpoint/vit/jx_vit_base_p16_224-80ecf9dd.pth /root/.cache/torch/checkpoints
# install
sh sotabench_setup.sh
# train start
NUM_PROC=$1
shift
python -m torch.distributed.launch \
    --nnode=2 \
    --node_rank=0 \
    --nproc_per_node=$NUM_PROC \
    --master_addr="127.0.0.1" \
    --master_port=23456 \
    train.py \
    /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model vit_base_patch16_224 --train_split 'train' --val_split 'test' \
    "$@"

python -m torch.distributed.launch \
    --nnode=2 \
    --node_rank=1 \
    --nproc_per_node=8 \
    --master_addr="127.0.0.1" \
    --master_port=23456 \
    train.py \
    /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model vit_base_patch16_224 --train_split 'train' --val_split 'test' \
    "$@"