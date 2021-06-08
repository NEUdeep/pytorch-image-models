#!/bin/bash

# just for reg.supremind.info/algorithmteam/suprevision/torch16:latest
apt-get install iproute2 iproute2-doc # install ip
#show ip
ip addr
cd /root/.cache
mkdir torch
cd torch
mkdir hub
cd hub
mkdir checkpoints

# use ali
mkdir  ~/.pip/
echo [global] > ~/.pip/pip.conf
echo index-url=https://mirrors.aliyun.com/pypi/simple/  >> ~/.pip/pip.conf
# check repo path
cd /workspace/mnt/storage/kanghaidong/video_project/image-master
nvidia-smi
export PYTHONWARNINGS='ignore:semaphore_tracker:UserWarning'
cp /workspace/mnt/storage/kanghaidong/khd-project/awesome_work_project/work_gitlab/fire-events/pre-model/resnet18-5c106cde.pth /root/.cache/torch/hub/checkpoints
# cp checkpoint/tf_mobilenetv3_small_075-da427f52.pth /root/.cache/torch/hub/checkpoints
ls /root/.cache/torch/hub/checkpoints
# install
sh sotabench_setup.sh
# train start
NUM_PROC=$1
shift
python -m torch.distributed.launch --nproc_per_node=$NUM_PROC \
 train.py \
 /workspace/mnt/storage/kanghaidong/FM_wubao_Data/foggy/data_v2_train+test --model resnet18 --batch-size 64 --train_split 'train' --val_split 'test' \
  "$@"