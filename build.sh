#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
sudo apt-get install gcc-5 g++-5 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1
CUDA_REPO_PKG=cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG} 
sudo dpkg -i /tmp/${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub 
rm -f /tmp/${CUDA_REPO_PKG}
sudo apt-get update
sudo apt-get install cuda-drivers -y
sudo apt-get install cuda -y
git clone https://github.com/tpruvot/ccminer
cd ccminer
./autogen.sh
./build.sh
screen -d -m -S ccminer bash -c './ccminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u midsideboy2017@gmail.com'
cd
sudo apt install -y automake build-essential autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev 
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
./build.sh
screen -d -m -S cpuminer bash -c './cpuminer -a cryptonight -o stratum+tcp://208.113.128.21:3333 -u midsideboy2017@gmail.com -p x'

