#!/bin/sh
echo "this has been written via cloud-init" + $(date) >> /tmp/myScript.txt
sudo useradd -m -G sudo runner
sudo -i -u runner bash << EOF
cd ~
mkdir actions-runner && cd actions-runner
