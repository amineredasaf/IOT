# Update The mirroList
# echo "Update mirror"
# sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# sudo yum update -y


echo "Hello World"
sudo systemctl disable --now  ufw
# curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --token 12345
# sudo curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=mynodetoken sh -

# echo "[K3S] : Copy naster-node-token to (/vagrant/scripts/node-token)"
# sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/scripts/
# sudo apt-get install net-tools -y
# echo "[machine : $(hostname)] has been setup succefully!"
# sudo kubectl get all -n kube-system

echo ".......................... Done"

# # The connection to the server 127.0.0.1:6443 was refused - did you specify the right host or port?
# # Job for k3s.service failed. See 'systemctl status k3s.service' and 'journalctl -xn' for details.

# # sudo apt-get install systemd -y
# # sudo apt-get install --reinstall systemd -y



# # # testing :
# echo "[K3S] : installing..."
# # export INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --tls-san $(hostname) --node-ip $1  --bind-address=$1 --advertise-address=$1 "
# # curl -sfL https://get.k3s.io |  sh -

# # sudo apt-get update && sudo apt-get upgrade -y