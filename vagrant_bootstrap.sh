#!/bin/bash

# Install dependencies needed to build NookManager
# Only bootstrap once
if [[ ! -f /etc/bootstrapped ]]; then
    apt-get update
    apt-get install -y unzip dos2unix default-jre patch zip make git g++ bison flex gettext texinfo libncurses5-dev u-boot-tools

    git config --global user.name "vagrant"
    git config --global user.email vagrant@precise32

    # Mark this machine bootstrapped
    date > /etc/bootstrapped
fi
