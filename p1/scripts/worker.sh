# Update The mirroList
# echo "Update mirror"
# sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# sudo yum update -y

echo "---------------------------------------------" 
echo "Hello World - $3 - Address $1" 
echo "---------------------------------------------" 
curl -sfL https://get.k3s.io | \
    INSTALL_K3S_EXEC="agent --node-ip=$1" \
    K3S_URL=https://$2:6443 \
    K3S_TOKEN_FILE="/vagrant/confs/node-token" \
    sh -

sudo echo 'alias k=kubectl' >> /home/vagrant/.bashrc