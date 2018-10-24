#!/usr/bin/sh
# Source: https://medium.com/@sh.tsang/geforce-gtx-1080ti-gpu-nvidia-driver-installation-in-ubuntu-18-04-1d3407ecfd5e
echo "[WARN] Removing Previous NVIDIA Drivers..."
sudo apt-get purge nvidia*
echo "[WARN] Installing NVIDIA Drivers..."
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-390 nvidia-settings
echo "[INFO] Finished installing drivers.  Please reboot.  sudo reboot"