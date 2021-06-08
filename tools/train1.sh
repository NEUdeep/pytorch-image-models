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

python -m torch.distributed.launch --nproc_per_node=2 train.py /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts --model tf_efficientnet_b7_ns --img-size 224 -b 8 --sched cosine --epochs 300 --lr 1.6e-3 --warmup-lr 5e-3 --train_split 'train' --val_split 'val' --num-classes 50030
# python -m torch.distributed.launch --nproc_per_node=2 train.py /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts --model tf_efficientnet_b7_ns --img-size 224 -b 8 --sched step --epochs 450 --decay-epochs 2.4 --decay-rate .97 --opt-eps .001 -j 8 --warmup-lr 1e-6 --weight-decay 1e-5 --drop 0.3 --drop-connect 0.2 --model-ema --model-ema-decay 0.9999 --aa rand-m9-mstd0.5 --remode pixel --reprob 0.2 --amp --lr .016 --resume output/train/20210606-002007-tf_efficientnet_b7_ns-224/model_best.pth.tar --num-classes 50030