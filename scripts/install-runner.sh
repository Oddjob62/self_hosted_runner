#!/bin/bash
echo "this has been written via cloud-init" + $(date) >> /tmp/myScript.txt
sudo useradd -m -G sudo runner
sudo -i -u runner bash << EOF
cd ~
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.291.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.1.tar.gz
tar xzf ./actions-runner-linux-x64-2.291.1.tar.gz
./config.sh --unattended --url https://github.com/replacerepo --token replacetoken --labels replacelabel
echo "url replacerepo, token replacetoken, label replacelabel" >> /tmp/config.txt
sudo ./svc.sh install
sudo ./svc.sh start
