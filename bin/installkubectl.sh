#!/bin/bash

#usage:
# curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/installkubectl.sh | sh

echo "Install kubectl..."

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

echo "========================================"

echo "Install Helm..."

rm -rf ~/.helm

sudo rm -rf /usr/local/bin/helm

curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh

chmod 700 get_helm.sh

./get_helm.sh # --version v2.8.2

rm -rf helm*
