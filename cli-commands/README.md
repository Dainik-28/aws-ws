#### Change permissions of the SSH Private key file
```sh
chmod 400 <filename>
```

#### SSH into the server
```sh
ssh -i <ssh key filename> <username>@<ip>
```

#### Install LAMP Server on Ubuntu
```sh
sudo apt-get update -y
sudo apt-get install tasksel -y
sudo tasksel install lamp-server
```

#### Clone the repository
```sh
git clone https://github.com/varunelavia/aws-ws.git
```

#### Copy app files to /var/www/html
```sh
sudo cp -r aws-ws/web-app/* /var/www/html/
```
#### Install docker on Ubuntu

```sh
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
```



#### Build docker image from docker file
```sh
sudo docker build -t php-calc:v1 .
```

#### Run the docker container 
```sh
sudo docker run -d -p 80:80 php-calc:v1
```

#### Rename the docker image  
```sh
sudo docker tag <old image name> <new image name>
```

#### Push docker image to registry  
```sh
sudo docker push <image name>
```

### Start apache on boot
```sh
sudo systemctl enable apache2.service
```

### Command to stress the VM
```sh
#!/bin/bash
apt-get update -y
apt-get install stress -y
stress -t 300 --cpu 10
```