#/usr/bin/env bash
# Uses github.com/slavrd/download-hc-product to install HashiCorp tools

# confirm prerequisite packages installation
PKGS='git python-pip'
which ${PKGS} >>/dev/null || {
    sudo apt-get update
    sudo apt-get install -y ${PKGS}
}

cd /tmp
git clone https://github.com/slavrd/py-download-hc-product.git
cd py-download-hc-product

# install python requirements libraries
pip install -r ./requirements.txt

# install HashiCorp products
sudo python download-hc-products.py terraform
sudo python download-hc-products.py vagrant

# clean up
sudo rm -rf /tmp/*
