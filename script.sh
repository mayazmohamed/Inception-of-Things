HOSTNAME=$(hostname)
sudo apt update && sudo apt upgrade
sudo apt-get install -y curl
curl --version
sudo apt-get install ufw -y
    ufw allow 6443/tcp #apiserver
    ufw allow from 10.42.0.0/16 to any #pods
    ufw allow from 10.43.0.0/16 to any #services

if [ "$HOSTNAME" = "momayazS" ]
then
    curl -sfL https://get.k3s.io | sh -
    sudo cp /var/lib/rancher/k3s/server/node-token /home/vagrant
fi

if [ "$HOSTNAME" = "iqessamSW" ]
then
    # scp vagrant@192.168.56.110:/var/lib/rancher/k3s/server/node-token vagrant@192.168.56.111:/home/vagrant
    my_token=$(cat /home/vagrant/node-token | awk '{print $1}')
    echo "my_token: $my_token"
   # On the agent node
   curl -sfL https://get.k3s.io | K3S_URL="https://192.168.56.110:6443" K3S_TOKEN="$my_token" sh -

fi