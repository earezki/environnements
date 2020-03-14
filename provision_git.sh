sudo apt update
sudo apt install git -y

ssh-keygen -t rsa -b 4096 -C "arezki.elmehdi@gmail.com" -f $HOME/.ssh/id_rsa -N ""
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa