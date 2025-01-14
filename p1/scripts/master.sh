# Update The mirroList
echo "Update mirror"
# sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# sudo yum update -y


# # curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-backend none --token 12345
# sudo /usr/local/bin/k3s-uninstall.sh
# curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --flannel-backend none --node-ip 192.168.56.110 --write-kubeconfig-mode 0644" K3S_TOKEN=12345 sh -s -
# sudo kubectl get all -n kube-system

# # The connection to the server 127.0.0.1:6443 was refused - did you specify the right host or port?
# # Job for k3s.service failed. See 'systemctl status k3s.service' and 'journalctl -xn' for details.

# # sudo apt-get install systemd -y
# # sudo apt-get install --reinstall systemd -y



# # # testing :
# echo "[K3S] : installing..."
# # export INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --tls-san $(hostname) --node-ip $1  --bind-address=$1 --advertise-address=$1 "
# # curl -sfL https://get.k3s.io |  sh -

# # sudo apt-get update && sudo apt-get upgrade -y