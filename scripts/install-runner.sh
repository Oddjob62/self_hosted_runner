#!/bin/bash
echo starting
sudo -i -u runner bash << EOF
cd ~
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.291.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.1.tar.gz
tar xzf ./actions-runner-linux-x64-2.291.1.tar.gz
./config.sh --unattended --url https://github.com/replacerepo --token replacetoken --labels replacelabel
sudo ./svc.sh install
sudo ./svc.sh start
