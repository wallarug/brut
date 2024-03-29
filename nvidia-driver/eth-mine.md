## Eth Mining Software Setup

WIP

## TODO

* work out modding GPU speeds

**Pre-req:**

i.  Set up a wallet

ii.  Choose a mining pool


## Install NVIDIA Driver

NOTE:  It appears that Ubuntu 20.04 automatically installs and configures the NVIDIA Driver (460.0) without any need to use the custom installer.  This is enabled when installing by ticking the 'install 3rd party drivers'.

To update the driver:  `sudo apt install nvidia-driver-460`

Option 2: Manual From Run File:

```
sudo apt install gcc make
```


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


## Download Eth Miner

* Claymore Duel Miner [here](https://github.com/Claymore-Dual/Claymore-Dual-Miner):  Has a 1% dev fee
* Phoenix Miner [here](https://phoenixminer.org/):  Has a 0.65% dev fee
* Ethminer [here](https://github.com/ethereum-mining/ethminer):  Has no dev fee

Each needs their own configuration file and has their own setups.


## Configure Miner and Mine!

- Testing with RTX 2070 Super (Max)
- Room Temp:  24 degrees (AC on, Window Open)
- gdm service stopped (give about 0.5 MH/s performance boost)

| Claymore Duel | Phoenix Miner | Ethminer |
|--|--|--|
| 36.095 MH/s | 36.103 MH/s | 35.57 MH/s |

## Card Expected Rates

3090 - 105 MH/s (120+ MH/s with mods)
3070 - 50 MH/s (60+ MH/s with mods)


## Set Up SSH

1.  Generate key pair
2.  Put Public Key into ./ssh/authorized_keys
3.  chmod 600 ./ssh/authorized_keys
4.  chown user:user ./ssh/authorized_keys
5.  Edit the file /etc/ssh/sshd_config to contain `PasswordAuthentication no` and `ChallengeResponseAuthentication no`
6.  Restart SSH:  `sudo systemctl restart ssh`


## Leaving a session running

Use TMUX
```
sudo apt install tmux
tmux
Ctrl D then B
```

## Mods for Cards

On Windows:  use MSI afterburner.  Set the Card Frequency to 1200 MHz.  Set the Memory to +250 or higher depending on cooling.  100 degrees is the stable temp.
