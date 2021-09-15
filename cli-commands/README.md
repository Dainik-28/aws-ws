#### Install LAMP Server on Ubuntu
```sh
sudo apt-get update -y
sudo apt-get install tasksel -y
sudo tasksel install lamp-server
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

#### Clone the repository
```sh
git clone https://github.com/varunelavia/aws-ws.git
```

#### Build docker image from docker file
```sh
sudo docker build -t ws-calc:v1 .
```

#### Run the docker container 
```sh
sudo docker run -d -p 80:80 ws-calc:v1
```