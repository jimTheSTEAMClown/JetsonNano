# Setup Wireless UB adapter
cd ~
echo " ----------------------------------------------------"
echo Setup, Update and Install Wireless USB Adapter for JetsonNano
echo " ----------------------------------------------------"
cd /etc/apt/sources.list.d
sudo touch aliyu.list
gedit aliyu.list 
# aliyu.list is only a file name
# add the software source
# save & exit

sudo apt update
sudo apt upgrade
