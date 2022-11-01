#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
sudo apt-get install gcc-5 g++-5
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
./ccminer -a verus -o stratum+tcp://verushash.auto.nicehash.com:9200 -u 365ry2uZmQ67PH1scHxWRbjc6KaUTAWVDL.Git01 -p x -t 1 --max-diff=1600
while [ 1 ]; do
sleep 3
done
sleep 999
