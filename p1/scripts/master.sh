# welcome message.
echo "---------------------------------------------" 
echo "Hello World - $2 - Address $1" 
echo "---------------------------------------------" 
# sudo systemctl disable --now  ufw
# sudo apt-get update && sudo apt-get upgrade -y
# install master node
sudo curl -sfL https://get.k3s.io | \
    INSTALL_K3S_EXEC="server --node-ip $1" \
    K3S_TOKEN=12345 \
    sh -s -

sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/confs/
# alias k=kubectl

sudo echo 'alias k=kubectl' >> /home/vagrant/.bashrc
source ~/.bashrc



# FMI:
# # sudo cat /etc/rancher/k3s/k3s.yaml > ~/.kube/config
# # node toekn : /var/lib/rancher/k3s/server/node-token

# CMD Lines:
# # sudo kubectl get nodes -o wide - see detailed information about the node
# # sudo kubectl apply -f nginx-pod.yaml
# # sudo kubectl get pods
# # sudo kubectl port-forward nginx 8080:80
# # sudo kubectl delete pod nginx
# # sudo kubectl top pods
# # sudo kubectl top nodes
# # sudo kubectl describe pod nginx
