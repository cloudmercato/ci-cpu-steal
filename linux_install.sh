#!/bin/bash

sudo=$(which sudo)

$sudo apt install -y libxml2 build-essential libncurses5-dev zlib1g-dev wget unzip

wget -q http://www.mersenne.org/ftp_root/gimps/p95v298b6.linux64.tar.gz
tar xf p95v298b6.linux64.tar.gz

wget -q https://github.com/Atoptool/atop/archive/v2.4.0.zip
unzip v2.4.0.zip
cd atop-2.4.0/
./mkdate
make
$sudo ln -s $(pwd)/atop /usr/bin/atop
