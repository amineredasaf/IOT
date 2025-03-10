# welcome message.
echo "---------------------------------------------" 
echo "Hello World - $2 - Address $1" 
echo "---------------------------------------------" 

mkdir /home/vagrant/.kube


sudo curl -sfL https://get.k3s.io | \
    INSTALL_K3S_EXEC="server --node-ip $1 --bind-address=$1" \
    K3S_TOKEN=12345 \
    sh -s -
sudo echo 'alias k=kubectl' >> /home/vagrant/.bashrc
sudo echo 'export KUBECONFIG=/home/vagrant/.kube/config' >> /home/vagrant/.bashrc

sudo cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config
sudo chmod 644 /home/vagrant/.kube/config

source ~/.bashrc
sudo kubectl apply -f /vagrant/confs/service.yaml
sudo kubectl apply -f /vagrant/confs/ingress.yaml
sudo kubectl apply -f /vagrant/confs/app1/deployment.yaml
sudo kubectl apply -f /vagrant/confs/app2/deployment.yaml
sudo kubectl apply -f /vagrant/confs/app3/deployment.yaml



# # # # Install k9s to explain only # # # #
sudo wget https://github.com/derailed/k9s/releases/download/v0.32.5/k9s_linux_amd64.deb
sudo apt install ./k9s_linux_amd64.deb
rm k9s_linux_amd64.deb

# k apply -f deployment.yaml