# this is a test code
# Author: Yathu Sivarajah
# Date: May 2021

sudo apt-get update
sudo apt-get install python3-pip npm python3-paraview -y

# nodejs installation
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo pip3 install jupyterlab numpy
reboot

git clone https://github.com/NVIDIA/ipyparaview.git
cd ipyparaview

sudo jupyter nbextension enable ipyparaview --py --sys-prefix
sudo  jupyter nbextension enable --py --sys-prefix ipyparaview

sudo ./build.sh

jupyter lab --ip $(hostname -I)

#jupyter notebook --ip $(hostname -I)
