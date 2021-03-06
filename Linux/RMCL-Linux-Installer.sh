#!/bin/bash
 
read -r -p "Are You Sure? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
 echo "Operation confirmed"
 ;;
    [nN][oO]|[nN])
 echo "Operation cancelled"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

sudo mkdir /usr/RoxMCLauncher
cd /usr/RoxMCLauncher
sudo apt update && sudo apt upgrade
sudo apt install curl
sudo curl http://downtherack.free.fr/RoxMCLauncher/RMCL.jar --output RMCL.jar
sudo curl https://raw.githubusercontent.com/Romanio0089/RoxMCLauncher/master/Linux/RMCLoader.sh --output RMCLoader.sh
sudo curl https://raw.githubusercontent.com/Romanio0089/RoxMCLauncher/master/Linux/RoxMCLauncher.desktop --output RoxMCLauncher.desktop
sudo curl http://downtherack.free.fr/RoxMCLauncher/icon.svg --output icon.svg
sudo chmod a+x RoxMCLauncher.desktop
sudo cp RoxMCLauncher.desktop ~/.local/share/applications/
cd ~/.local/share/applications/
desktop-file-validate RoxMCLauncher.desktop
sudo update-desktop-database
echo "RoxMCLauncher has been installed ! To run it, search for RoxMCLauncher in the app library or execute the command: sudo java -jar /usr/RoxMCLauncher/RMCL.jar"
