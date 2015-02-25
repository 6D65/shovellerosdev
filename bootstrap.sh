#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y nodejs
sudo apt-get install -y npm

sudo npm config set registry http://registry.npmjs.org/

sudo npm install -g coffee-script
sudo npm install -g gulp

cd /vagrant

# - Clone the github repo
# - Copy over the frameworks directory
# - Install the nodejs, npm
# - Install CoffeeScript
# - Install Gulp
# - Run the build script for the coffeescript.

git clone https://github.com/6D65/shovelleros

source ~/.bashrc

sudo cocos new dummy -l js -d /vagrant

# sudo cp -r /vagrant/dummy/dummy/frameworks /vagrant/shovelleros/frameworks
sudo mv /vagrant/dummy/dummy/frameworks /vagrant/shovelleros/frameworks