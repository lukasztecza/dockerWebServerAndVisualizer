# dockerPlayground
Docker playground for development purposes

### Usage
Clone this repo
```
git clone http://lukasztecza/dockerPlayground
cd dockerPlaygound
```
Build docker images
```
bash 1_build.sh
```
Init swarm manager and create external network
```
bash 2_init.sh
```
It is possible that your local environment has multiple addresses on interface that swarm wants to use then choose one and pass it
```
ifconfig
bash 2_init.sh 111.111.111.111 (address which you want to use from ifconfig)
```
Deploy web server and visualiser
```
bash 3_deploy.sh
```
