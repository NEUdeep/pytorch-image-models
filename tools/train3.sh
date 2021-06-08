cd /workspace/mnt/storage/kanghaidong/transformer/new_study/pytorch-image-models
pip install dataclasses
ls /root/.cache/torch/checkpoints
cd /root
mkdir .cache
cd .cache
mkdir torch
cd torch
mkdir checkpoints
cd checkpoints

cp /workspace/mnt/storage/kanghaidong/transformer/new_study/pytorch-image-models/checkpoint/pre-models/tf_efficientnet_b7_ns-1dbc32de.pth .
cd /workspace/mnt/storage/kanghaidong/transformer/new_study/pytorch-image-models

cd /workspace/mnt/storage/kanghaidong/cloud_project/apex
pip install -v --disable-pip-version-check --no-cache-dir ./
cd /workspace/mnt/storage/kanghaidong/transformer/new_study/pytorch-image-models

python -m torch.distributed.launch --nproc_per_node=8 train.py /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts --model tf_efficientnet_b7_ns --img-size 224 -b 8 --sched cosine --epochs 300 --lr 5e-2 --warmup-lr 5e-3 --train_split 'train' --val_split 'val' --num-classes 50030 --resume output/train/20210606-001223-tf_efficientnet_b7_ns-224/model_best.pth.tar