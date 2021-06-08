### 脚本运行
目前训练、评估模式支持多种形式的单卡，多卡训练和评估姿势。
#### 单机多卡训练
具体示例脚本如下：
```
python -m torch.distributed.launch \
        --nproc_per_node=8 \
        --master_port=$((RANDOM + 20000)) \
        train.py \
        /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch  
```

#### 多机多卡训练

```
python -m torch.distributed.launch \
    --nnode=3 \
    --node_rank=0 \
    --nproc_per_node=8 \
    --master_addr="10.0.236.227" \
    --master_port=23467 \
    train.py \
    /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch 
```

这里多机多卡，nnode是多少台机器； node_rank是当前机器的rank id, 设置0的机器为主机， 其他为客机； nproc_per_node是每台机器的GPU卡数； master_addr是主机对应的ip； master_port对应设定转发的端口号。

#### 单机多卡评估

```
python -m torch.distributed.launch \
        --nproc_per_node=2 \
        --master_port=$((RANDOM + 20000)) \
        validate.py \
        /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch \
        --model resnet18