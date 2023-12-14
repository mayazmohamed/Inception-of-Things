#!/bin/bash

HOSTNAME=$(hostname)
sudo apt update -y && sudo apt upgrade -y
sudo apt-get install -y curl

echo "Hostname: $HOSTNAME"

if [ "$HOSTNAME" = "momayazS" ]; then
    echo "Installing k3s on momayazS..."
    curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1" sh -
	  sudo cp /var/lib/rancher/k3s/server/node-token /home/vagrant
	  sleep 10
elif [ "$HOSTNAME" = "iqessamSW" ]; then
    echo "Installing k3s on iqessamSW..."
    K3S_TOKEN=$(cat /home/vagrant/node-token | awk '{print $1}')
	  curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=${K3S_TOKEN} sh -
	  sleep 10
else
    echo "Unknown hostname: $HOSTNAME"
    exit 1
fi
