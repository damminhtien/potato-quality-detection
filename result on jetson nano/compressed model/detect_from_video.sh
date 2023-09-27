sudo nvpmodel -m 0
sudo jetson_clocks

export USE_NCCL=0
export USE_DISTRIBUTED=0
export USE_QNNPACK=0
export USE_PYTORCH_QNNPACK=0
export TORCH_CUDA_ARCH_LIST="5.3;6.2;7.2"
export USE_CUDA=ON
export USE_CUDNN=ON

yolo predict task=detect model=best_nano.torchscript source=vid_2.mp4 device=0 conf=0.60 half=True max_det=10
