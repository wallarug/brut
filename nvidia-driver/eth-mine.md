## Eth Mining Software Setup

WIP

**Pre-req:**

i.  Set up a wallet
ii.  Choose a mining pool


## Install NVIDIA Driver

NOTE:  It appears that Ubuntu 20.04 automatically installs and configures the NVIDIA Driver (460.0) without any need to use the custom installer.  This is enabled when installing by ticking the 'install 3rd party drivers'.

To update the driver:  `sudo apt install nvidia-driver-460`

## Install CUDA 11.2+

Option 1: Download the latest CUDA package from the NVIDIA website.  You may need to use a non-linux computer to get the link.  Then you can use wget to download the program.  Make sure to chmod 755 the CUDA run file.

Option 2:  It appears that Ubuntu 20.04 can install the CUDA library from apt using the following command:  `sudo apt install nvidia-cuda-toolkit` without a need for the run file.  Note this will install the older version of CUDA (10.1) which may not be ideal for what is needed.

```
sudo apt install gcc
```

#### Post Install

Add the cuda directory to path and Add the Library LD path to .bashrc

```
## For CUDA
export PATH=$PATH:/usr/local/cuda-11.2/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.2/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.2/lib
```


## Download Eth Miner [https://github.com/Claymore-Dual/Claymore-Dual-Miner](Claymore Duel)



## Configure Miner and Mine!


