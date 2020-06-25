#!/bin/bash
#Can be downloaded from
#wget http://tiny.cc/RMCLinux && bash RMCLinux
echo "Do you want to continue? (y/n)"
read input
if [ "$input" == "yes" "y" "Y" ]
then
echo "continue"
fi
sudo mkdir /RoxMCLauncher
cd /RoxMCLauncher
curl 'http://downtherack.free.fr/RoxMCLauncher/RMCL.jar'
