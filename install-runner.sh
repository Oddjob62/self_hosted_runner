#!/bin/bash
echo starting
sudo -i -u runner bash << EOF
cd ~
cd actions-runner
./config.sh --unattended --url https://github.com/replacerepo --token replacetoken --labels replacelabel
sudo ./svc.sh install
sudo ./svc.sh start
# sudo apt -y remove walinuxagent
# sudo apt -y remove openssh-client