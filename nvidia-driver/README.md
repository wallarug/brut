# Installing NVIDIA Driver and CUDA

This is the definative guide on how to install the correct NVIDIA Drivers to work with the GTX 1080Ti and Ubuntu 18.04.1
This is created from a collection of research.

## Step 1 - Installing the GPU Driver

Adapted from this website:
https://medium.com/@sh.tsang/geforce-gtx-1080ti-gpu-nvidia-driver-installation-in-ubuntu-18-04-1d3407ecfd5e

```
sudo apt-get purge nvidia*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-390 nvidia-settings
sudo reboot
```

Check for successful install:
```
nvidia-smi
```

## Step 2 - Installing CUDA

Adapted from this website:
https://medium.com/@zhanwenchen/install-cuda-and-cudnn-for-tensorflow-gpu-on-ubuntu-79306e4ac04e

NOTE:  Skip step 1 and go straight to step 2.

Download the CUDA installer for Ubuntu 17.04 from NVIDIA Developer.

Version: CUDA 9.0 and Ubuntu 17.04

```
cd ~/Downloads
sudo chmod +x cuda_9.0.176_384.81_linux.run 
sudo ./cuda_9.0.176_384.81_linux.run
```

