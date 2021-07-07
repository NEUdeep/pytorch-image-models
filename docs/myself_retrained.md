# Training Examples

## swin_tiny_patch4_window7_224 with pretrained - 81.368 top-1
These params are for dual nvidia 2080ti cards,pytorch1.7,python3.6.9 with NVIDIA Apex installed:
origin is `swin_tiny_patch4_window7_224	81.378	18.622	95.540	4.460	28.29	224	0.900	bicubic`
`/workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model swin_tiny_patch4_window7_224 --img-size 224 -b 64 --sched cosine --epochs 300 --lr 5e-6 --warmup-lr 5e-7 --train_split 'train' --val_split 'val'`
`loss<1.5`
if we training from scrach,it show:
`Scheduled epochs: 310
Train: 0 [   0/10009 (  0%)]  Loss:  7.010710 (7.0107)  Time: 1.820s,   70.32/s  (1.820s,   70.32/s)  LR: 5.000e-07  Data: 1.382 (1.382)
Train: 0 [  50/10009 (  0%)]  Loss:  6.973588 (6.9921)  Time: 0.316s,  405.65/s  (0.344s,  371.84/s)  LR: 5.000e-07  Data: 0.006 (0.033)
Train: 0 [ 100/10009 (  1%)]  Loss:  6.969796 (6.9847)  Time: 0.326s,  392.81/s  (0.330s,  387.68/s)  LR: 5.000e-07  Data: 0.006 (0.019)
Train: 0 [ 150/10009 (  1%)]  Loss:  6.984760 (6.9847)  Time: 0.319s,  401.74/s  (0.325s,  393.80/s)  LR: 5.000e-07  Data: 0.006 (0.015)
/usr/local/lib/python3.6/dist-packages/PIL/TiffImagePlugin.py:788: UserWarning: Corrupt EXIF data.  Expecting to read 4 bytes but only got 0. 
  warnings.warn(str(msg))
Train: 0 [ 200/10009 (  2%)]  Loss:  6.945073 (6.9768)  Time: 0.327s,  391.28/s  (0.323s,  396.50/s)  LR: 5.000e-07  Data: 0.005 (0.012)
Train: 0 [ 250/10009 (  2%)]  Loss:  6.955101 (6.9732)  Time: 0.312s,  410.77/s  (0.322s,  398.09/s)  LR: 5.000e-07  Data: 0.006 (0.011)
Train: 0 [ 300/10009 (  3%)]  Loss:  6.928783 (6.9668)  Time: 0.312s,  409.89/s  (0.321s,  399.04/s)  LR: 5.000e-07  Data: 0.005 (0.010)
Train: 0 [ 350/10009 (  3%)]  Loss:  6.971868 (6.9675)  Time: 0.320s,  400.53/s  (0.320s,  399.61/s)  LR: 5.000e-07  Data: 0.005 (0.009)
Train: 0 [ 400/10009 (  4%)]  Loss:  7.008904 (6.9721)  Time: 0.314s,  408.21/s  (0.320s,  400.35/s)  LR: 5.000e-07  Data: 0.006 (0.009)
Train: 0 [ 450/10009 (  4%)]  Loss:  6.957233 (6.9706)  Time: 0.313s,  408.70/s  (0.319s,  400.71/s)  LR: 5.000e-07  Data: 0.005 (0.009)
Train: 0 [ 500/10009 (  5%)]  Loss:  6.961604 (6.9698)  Time: 0.317s,  404.13/s  (0.319s,  401.08/s)  LR: 5.000e-07  Data: 0.005 (0.008)
Train: 0 [ 550/10009 (  5%)]  Loss:  7.038633 (6.9755)  Time: 0.330s,  387.85/s  (0.319s,  401.41/s)  LR: 5.000e-07  Data: 0.005 (0.008)
Train: 0 [ 600/10009 (  6%)]  Loss:  7.024788 (6.9793)  Time: 0.322s,  397.03/s  (0.319s,  401.27/s)  LR: 5.000e-07  Data: 0.006 (0.008)
Train: 0 [ 650/10009 (  6%)]  Loss:  6.935431 (6.9762)  Time: 0.317s,  403.98/s  (0.319s,  401.30/s)  LR: 5.000e-07  Data: 0.005 (0.008)
Train: 0 [ 700/10009 (  7%)]  Loss:  6.989706 (6.9771)  Time: 0.315s,  406.83/s  (0.319s,  401.13/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [ 750/10009 (  7%)]  Loss:  6.996185 (6.9783)  Time: 0.319s,  401.43/s  (0.319s,  401.19/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [ 800/10009 (  8%)]  Loss:  7.004539 (6.9798)  Time: 0.315s,  406.69/s  (0.319s,  401.46/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [ 850/10009 (  8%)]  Loss:  7.030409 (6.9826)  Time: 0.310s,  412.37/s  (0.319s,  401.73/s)  LR: 5.000e-07  Data: 0.006 (0.007)
Train: 0 [ 900/10009 (  9%)]  Loss:  6.994157 (6.9832)  Time: 0.327s,  391.46/s  (0.319s,  401.75/s)  LR: 5.000e-07  Data: 0.006 (0.007)
Train: 0 [ 950/10009 (  9%)]  Loss:  6.972007 (6.9827)  Time: 0.315s,  406.25/s  (0.319s,  401.44/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [1000/10009 ( 10%)]  Loss:  7.054325 (6.9861)  Time: 0.314s,  407.90/s  (0.319s,  401.25/s)  LR: 5.000e-07  Data: 0.007 (0.007)
Train: 0 [1050/10009 ( 10%)]  Loss:  6.953919 (6.9846)  Time: 0.323s,  395.91/s  (0.319s,  401.23/s)  LR: 5.000e-07  Data: 0.006 (0.007)
Train: 0 [1100/10009 ( 11%)]  Loss:  6.973547 (6.9841)  Time: 0.327s,  391.43/s  (0.319s,  401.22/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [1150/10009 ( 11%)]  Loss:  7.026835 (6.9859)  Time: 0.319s,  401.23/s  (0.319s,  401.16/s)  LR: 5.000e-07  Data: 0.005 (0.007)
Train: 0 [1200/10009 ( 12%)]  Loss:  7.009689 (6.9869)  Time: 0.323s,  396.47/s  (0.319s,  401.17/s)  LR: 5.000e-07  Data: 0.006 (0.007)`
you can see, lr is too small, lead loss not decrease.
<if --lr 5e-2 --warmup-lr 5e-3>
`Train: 0 [2500/10009 ( 25%)]  Loss:  6.391401 (6.6349)  Time: 0.324s,  394.83/s  (0.317s,  403.25/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2550/10009 ( 25%)]  Loss:  6.399024 (6.6304)  Time: 0.310s,  413.18/s  (0.317s,  403.33/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2600/10009 ( 26%)]  Loss:  6.315057 (6.6244)  Time: 0.313s,  409.33/s  (0.317s,  403.38/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2650/10009 ( 26%)]  Loss:  6.373776 (6.6198)  Time: 0.336s,  380.51/s  (0.317s,  403.35/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2700/10009 ( 27%)]  Loss:  6.346904 (6.6148)  Time: 0.323s,  396.32/s  (0.317s,  403.30/s)  LR: 5.000e-03  Data: 0.005 (0.006)
Train: 0 [2750/10009 ( 27%)]  Loss:  6.303571 (6.6093)  Time: 0.314s,  408.27/s  (0.317s,  403.26/s)  LR: 5.000e-03  Data: 0.005 (0.006)
Train: 0 [2800/10009 ( 28%)]  Loss:  6.315529 (6.6041)  Time: 0.314s,  407.48/s  (0.317s,  403.23/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2850/10009 ( 28%)]  Loss:  6.335881 (6.5995)  Time: 0.321s,  398.30/s  (0.317s,  403.20/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2900/10009 ( 29%)]  Loss:  6.321636 (6.5948)  Time: 0.309s,  413.82/s  (0.317s,  403.22/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [2950/10009 ( 29%)]  Loss:  6.370687 (6.5910)  Time: 0.330s,  387.97/s  (0.317s,  403.31/s)  LR: 5.000e-03  Data: 0.007 (0.006)
Train: 0 [3000/10009 ( 30%)]  Loss:  6.303296 (6.5863)  Time: 0.313s,  408.69/s  (0.317s,  403.32/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [3050/10009 ( 30%)]  Loss:  6.291459 (6.5816)  Time: 0.326s,  392.09/s  (0.317s,  403.30/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [3100/10009 ( 31%)]  Loss:  6.313604 (6.5773)  Time: 0.313s,  409.28/s  (0.317s,  403.23/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [3150/10009 ( 31%)]  Loss:  6.132539 (6.5704)  Time: 0.313s,  409.28/s  (0.317s,  403.18/s)  LR: 5.000e-03  Data: 0.006 (0.006)
Train: 0 [3200/10009 ( 32%)]  Loss:  6.079262 (6.5628)  Time: 0.311s,  411.73/s  (0.318s,  403.08/s)  LR: 5.000e-03  Data: 0.005 (0.006)`
it also low.
经验就是batch，lr，optimizer这三个参数是核心，其他的操作，诸如augmax，mixup等都是景上添花；
对于训练集合来讲，模型的复杂度要和数据量，难度匹配；
小数据集：100类别以下，大小在10G以下的，batch不重要，大小都可以，尤其对于模型收敛来讲，一个来自imagenet的pre-trained会在10个epoch收敛，后面经过lr的调整，等参数的优化，会逐渐的走向优化；
大数据集：类似于imagent1k，imagenet22k，aliproduct5.3k，这些都是在100G左右；关键是训练集合类别非常多，而且大部分都存在常见的小目标，相似性等问题；尤其aliproduct，但是总体来讲，这些问题都可以得到优化；
而模型角度来讲，imagenet上能收敛的，基本上在大的其他数据集上也能够收敛，唯一要注意的就是batch不能太小（>64）；而且lr也能够太大，反正肯定是很难训练；



## tf_efficientnet_b1 with pretrained -  top-1

`sh tools/distributed_train.sh 2 /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model tf_efficientnet_b1 -b 128 --sched step --epochs 450 --decay-epochs 2.4 --decay-rate .97 --opt rmsproptf --opt-eps .001 -j 8 --warmup-lr 1e-6 --weight-decay 1e-5 --drop 0.3 --drop-connect 0.2 --model-ema --model-ema-decay 0.9999 --aa rand-m9-mstd0.5 --remode pixel --reprob 0.2 --amp --lr .016`

Train: 1 [5000/5004 (100%)]  Loss:  5.085654 (5.7736)  Time: 0.449s,  569.84/s  (0.474s,  540.03/s)  LR: 5.334e-03  Data: 0.015 (0.014)
Train: 1 [5003/5004 (100%)]  Loss:  4.989123 (5.7659)  Time: 0.431s,  594.42/s  (0.474s,  540.05/s)  LR: 5.334e-03  Data: 0.000 (0.014)
Test: [   0/195]  Time: 2.276 (2.276)  Loss:  3.5284 (3.5284)  Acc@1: 28.9062 (28.9062)  Acc@5: 60.5469 (60.5469)
Test: [  50/195]  Time: 0.079 (0.286)  Loss:  3.2546 (3.5687)  Acc@1: 22.2656 (23.7745)  Acc@5: 55.4688 (50.3830)
Test: [ 100/195]  Time: 0.080 (0.274)  Loss:  5.1610 (3.7333)  Acc@1:  8.5938 (22.8303)  Acc@5: 25.7812 (47.5982)
Test: [ 150/195]  Time: 0.871 (0.272)  Loss:  4.6269 (3.9399)  Acc@1: 16.4062 (21.2127)  Acc@5: 33.9844 (44.4097)
Test: [ 195/195]  Time: 0.024 (0.261)  Loss:  5.8634 (3.9768)  Acc@1:  3.7500 (21.2400)  Acc@5: 12.5000 (43.9780)
Test (EMA): [   0/195]  Time: 1.724 (1.724)  Loss:  6.8950 (6.8950)  Acc@1:  0.0000 ( 0.0000)  Acc@5:  0.0000 ( 0.0000)
Test (EMA): [  50/195]  Time: 0.097 (0.190)  Loss:  6.8615 (6.8977)  Acc@1:  0.0000 ( 0.0000)  Acc@5:  0.0000 ( 0.5744)
Test (EMA): [ 100/195]  Time: 0.090 (0.184)  Loss:  6.8475 (6.9017)  Acc@1:  0.0000 ( 0.0000)  Acc@5:  0.0000 ( 0.3868)
Test (EMA): [ 150/195]  Time: 0.078 (0.177)  Loss:  6.8827 (6.9060)  Acc@1:  0.0000 ( 0.0000)  Acc@5:  0.0000 ( 0.4527)
Test (EMA): [ 195/195]  Time: 0.024 (0.176)  Loss:  6.8138 (6.9122)  Acc@1:  0.0000 ( 0.1000)  Acc@5:  0.0000 ( 0.5000)
Current checkpoints:
 ('./output/train/20210609-153821-tf_efficientnet_b1-240/checkpoint-0.pth.tar', 0.1)
 ('./output/train/20210609-153821-tf_efficientnet_b1-240/checkpoint-1.pth.tar', 0.1)

Train: 2 [   0/5004 (  0%)]  Loss:  5.015893 (5.0159)  Time: 3.130s,   81.79/s  (3.130s,   81.79/s)  LR: 1.067e-02  Data: 1.884 (1.884)
Train: 2 [  50/5004 (  1%)]  Loss:  5.053020 (5.0345)  Time: 0.499s,  513.25/s  (0.636s,  402.40/s)  LR: 1.067e-02  Data: 0.016 (0.060)
Train: 2 [ 100/5004 (  2%)]  Loss:  5.116920 (5.0619)  Time: 0.445s,  575.07/s  (0.554s,  462.33/s)  LR: 1.067e-02  Data: 0.013 (0.037)
Train: 2 [ 150/5004 (  3%)]  Loss:  5.261723 (5.1119)  Time: 0.453s,  564.86/s  (0.525s,  487.27/s)  LR: 1.067e-02  Data: 0.013 (0.030)


## tf_efficientnet_b7_ns with pretrained -  top-1(85.0(epoch=196) in AliProducts; have 50030 classes)
- 200epoch cost three weeks trained in nvidia2080ti(8X).
`AliProducts is large datasets for cvpr2021 competition of tianchi;dital you can found "https://tianchi.aliyun.com/competition/entrance/531884/information"`
`python -m torch.distributed.launch --nproc_per_node=8 train.py /workspace/mnt/storage/kanghaidong/action_detect_data/data/AliProducts --model tf_efficientnet_b7_ns --img-size 224 -b 16 --sched cosine --epochs 300 --lr 1e-3 --warmup-lr 5e-3 --train_split 'train' --val_split 'val' --num-classes 50030`

log you can found[tf_efficientnet_b7_ns](output/train/20210608-165417-tf_efficientnet_b7_ns-224/summary.csv)
[args](output/train/20210608-165417-tf_efficientnet_b7_ns-224/args.yaml)


## resnet18 -  top-1(69.0(epoch=) in imagenet1k; have 1k classes)
- 1epoch cost 3minute trained in nvidia6000(8X).
`python -m torch.distributed.launch --nproc_per_node=8 train.py /workspace/mnt/storage/yankai/imagenet/ImageNet-pytorch --model resnet18 --img-size 224 -b 128 --sched cosine --epochs 300 --lr 1e-2 --warmup-lr 5e-2 --train_split 'train' --val_split 'val' --num-classes 1000`

log you can found[resnet18](output/train/20210707-094750-resnet18-224/summary.csv)
[args](output/train/20210707-094750-resnet18-224/args.yaml)