sudo cp god.init.d /etc/init.d/god
sudo chmod +x /etc/init.d/god
sudo update-rc.d god defaults
sudo mkdir /etc/god

sudo ln -s /home/agideo/god-sample/sample.god /etc/god/sample.god