#!/bin/bash

# Copy working directory to the vagrant home directory
# Otherwise the build fails due to issues with the virtualbox shared folder filesystem
rsync -av --exclude='/vagrant/staging' /vagrant /home/
cd /home/vagrant
./build.sh
cp NookManager.img /vagrant/
