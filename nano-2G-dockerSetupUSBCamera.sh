# this is the setup for the USB camera Docker file
# sudo wget -O ./nano-2G-dockerSetupUSBCamera.sh https://raw.githubusercontent.com/jimTheSTEAMClown/JetsonNano/master/nano-2G-dockerSetupUSBCamera.sh
# sudo chmod 755 ./nano-2G-dockerSetupUSBCamera.sh
# sudo cat ./nano-2G-dockerSetupUSBCamera.sh

echo "sudo docker run --runtime nvidia -it --rm --network host \
    --volume ~/nvdli-data:/nvdli-nano/data \
    --device /dev/video0 \
    nvcr.io/nvidia/dli/dli-nano-ai:v2.0.1-r32.4.4" > docker_dli_run.sh
chmod +x docker_dli_run.sh
./docker_dli_run.sh
