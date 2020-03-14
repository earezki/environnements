curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo usermod -aG docker ${USER}

echo '{ "registry-mirrors": ["http://localhost:5000"] }' >> ./daemon.json
sudo mv ./daemon.json /etc/docker/daemon.json
sudo service docker restart

sudo docker info
