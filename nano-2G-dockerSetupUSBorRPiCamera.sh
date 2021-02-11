#! /bin/bash
# ============================================================================
# this is the setup for the Jetson Nano 2G for the USB camera Docker file
# sudo wget -O ./nano-2G-dockerSetupUSBorRPiCamera.sh https://raw.githubusercontent.com/jimTheSTEAMClown/JetsonNano/master/nano-2G-dockerSetupUSBorRPiCamera.sh
# sudo chmod 755 ./nano-2G-dockerSetupUSBorRPiCamera.sh
# sudo cat ./nano-2G-dockerSetupUSBorRPiCamera.sh
# sudo bash ./nano-2G-dockerSetupUSBorRPiCamera.sh
# ============================================================================
# shell script to to setup for the Jetson Nano 2G for the USB or RPi Camera Docker file
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://github.com/jimTheSTEAMClown/JetsonNano
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		nano-2G-dockerSetupUSBorRPiCamera.sh
# Description:    shell script to to setup for the Jetson Nano 2G for the USB or RPi Camera Docker file 
# Dependencies:   
# Revision: 
#  Revision 0.02 - Updated 02/01/2021 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 02/01/2021
# Additional Comments: 
# see https://www.answers.com/Q/How_do_you_make_a_yes_no_command_in_cmd to add more features
# ============================================================================
echo "----------------------------------------------------"
echo "Setup the Jetson Nano 2G after the first time boot" 
echo "----------------------------------------------------"
echo " "
pwd
# ls -l
ls
echo " "
echo "----------------------------------------------------"
echo "Do you wish run the Setup the Jetson Nano 2G after the first time boot?"
echo "----------------------------------------------------"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
            echo "----------------------------------------------------"
            echo "Running Setup the Jetson Nano 2G after the first time boot" 
            echo "----------------------------------------------------"
            break;;
        No ) 
            echo "----------------------------------------------------"
            echo "Exiting Without Setup the Jetson Nano 2G after the first time boot" 
            echo "----------------------------------------------------"
            exit;;
    esac
done
# ============================================================================
# Setup the Jetson Nano 2G after the first time boot
# echo "----------------------------------------------------"
# echo "Setuping the Jetson Nano 2G after the first time boot"
# echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Ready... I'm going to run "
echo "  Going to run $ update with -y"
echo "  Going to run $ upgrade with -y" 
echo "----------------------------------------------------"
echo "Do you wish to run UPDATE and UPGRADE?  Enter y/Y or n/N or any Key?"
read -p "update and upgrade?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "Running $ update with -y"
echo "----------------------------------------------------"
echo " "
sudo apt-get update -y
echo " "
echo "----------------------------------------------------"
echo "Done running Update"
echo "----------------------------------------------------"
echo "----------------------------------------------------"
echo "Running $ upgrade with -y"
echo "----------------------------------------------------"
echo " "
sudo apt-get upgrade -y
echo " "
echo "----------------------------------------------------"
echo "Done running Upgrade"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping Update and Upgrade install"
else
echo "Skipping Update and Upgrade install"
fi

echo "Do you wish to install the Docker for the USB Camera  Enter y/Y or n/N or any Key?"
read -p "Install Docker for the USB Camera?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "Installing Docker for the USB Camera"
echo "----------------------------------------------------"
echo " "
echo "Running sudo mkdir -p ~/nvdli-data"
sudo mkdir -p ~/nvdli-data

echo "Running docker with the tag dli-nano-ai:v2.0.1-r32.4.4 for the USB Camera"
echo "sudo docker run --runtime nvidia -it --rm --network host \
    --volume ~/nvdli-data:/nvdli-nano/data \
    --device /dev/video0 \
    nvcr.io/nvidia/dli/dli-nano-ai:v2.0.1-r32.4.4" > docker_dli_run.sh
chmod +x docker_dli_run.sh
# ./docker_dli_run.sh
echo " "
echo "----------------------------------------------------"
echo "Done running script"
echo "----------------------------------------------------"
echo " "
echo "You can now run the dicker dli"
echo "copy and run  ./docker_dli_run.sh"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping this install"
else
echo "Skipping this install"
fi

