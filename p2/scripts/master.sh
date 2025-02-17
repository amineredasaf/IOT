# welcome message.
echo "---------------------------------------------" 
echo "Hello World - $2 - Address $1" 
echo "---------------------------------------------" 



sudo curl -sfL https://get.k3s.io | \
    INSTALL_K3S_EXEC="server --node-ip $1" \
    K3S_TOKEN=12345 \
    sh -s -
