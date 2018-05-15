sudo apt update
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev screen -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
./xmrig --print-time 5 --donate-level 0 --api-port 80 --max-cpu-usage 90 --cpu-priority 5 -o 171.244.43.122:1001 -u p1 -p x -k --nicehash
