#!/usr/bin/sh
# Source: https://linuxconfig.org/how-to-disable-nouveau-nvidia-driver-on-ubuntu-18-04-bionic-beaver-linux
echo "[WARN] blacklisting nouveau driver"
sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
echo "[INFO] Checking Blacklist is correct.  Ensure that the following is displayed \
		blacklist nouveau
		options nouveau modeset=0
	"
cat /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo update-initramfs -u
echo "[INFO] Finished blacklisting drivers.  Please reboot.  sudo reboot"