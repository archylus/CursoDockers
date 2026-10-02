docker pause primero
cd
pwd
docker pause primero
sudo docker pause primero
sudo docker unpause primero
sudo docker stop primero
docker images
whoami
ls
cd dockerlabs/
ls
less 04\ Practica.md 
docker run hello-world
docker run -d --name=db redis:alpine
ps aux | grep redis-server
pstree -c -p -A $(pgrep dockerd)
cat /proc/<docker process ID>/cgroup
cat /sys/fs/cgroup/cpu,cpuacct/docker/<dockerID>/cpu.shares
cat /sys/fs/cgroup/cpu,cpuacct/docker/<dockerID>/cpuacct.stat
ls /sys/fs/cgroup/memory/docker/
docker stats
docker create --name ciclo ubuntu
docker images
docker ps
docker ps -a
docker start ciclo
docker ps
docker ps -a
docker run --name ciclo ubuntu sh -c "while true; do $(echo date); sleep 1; done"
docker -rm ciclo
docker rm ciclo
docker run --name ciclo ubuntu sh -c "while true; do $(echo date); sleep 1; done"
docker ps
docker ps -a
docker start ciclo
docker ps
docker pause ciclo
docker ps
docker upause ciclo
docker unpause ciclo
docker stop ciclo
docker ps
docker ps -a
docker rm ciclo
docker version
docker version --format '{{.Server.Version}}'
docker info
docker pull redis:3.2.11-alpine
docker save redis:3.2.11-alpine > redis.tar
tar -xvf redis.tar
ls
cat repositories
docker images 
ll
cat manifest.json 
docker run --name primero redis:3.2.11-alpine
docker run -d --name primero redis:3.2.11-alpine
docker ps
docker ps -a
docker rm primero
docker run -d --name primero redis:3.2.11-alpine
docker ps -a
docker ps
docker ps -s
docker inspect primero
docker top primero
docker events 
docker history primero
dicjer history 21280
docker history 21280
docker images
docker history ebf1948b84dc
docker logs primero
docker run -d --name demologs ubuntu sh -c "while true; do $(echo date); sleep 1; done"
docker ps
docker logs -f demologs
docker logs -f -n 2 demologs
docker logs --until=60s demologs
docker start primero
docker exec -it primero env
docker exec -it primero sh
docker update --restart=always primero
docker stop primero
docker rm primero
docker ps 
docker ps -a
docker ps
git clone https://github.com/cachac/dockerlabs.git
ls
cd dockerlabs/
vi dockerfile
docker build -t demowebsite:1.0
docker build -t demowebsite:1.0 .
docker images
docker run -d --name website -p 8080:80 demowebsite:1.0 
docker ps
docker logs -f website 
ls
vi dockerfile
docker rm -f website 
docker build --build-arg AUTOR="Archy" -t demowebsite:2.0 .
docker ps
docker run -d --name website -p 8080:80 demowebsite:2.0
vi dockerfile
docker ps
docker exec website ls
docker exec website pwd
docker exec website env
docker exec -it website sh
uname -r
docker exec -it website bash
uname -a
docker ps
ls
mkdir demo.dockerfile
rm -r demo.dockerfile
vi demo.dockerfile
docker build . -f demo.dockerfile -t dockerlabs
docker images
docker run -p 8080:8080 dockerlabs:latest
docker ps
docker stop website 
docker ps
docker run -p 8080:8080 dockerlabs:latest
docker os
docker ps
docker ps -a
docker pull cachac/dockerlabs_base:node14
docker images
docker image prune
docker images 
docker container prune
docker ps
docker images
docker tag 49609002140b ArchyCR/dockerlabs
docker images
docker push ArchyCR/dockerlabs:latest
docker login
docker push ArchyCR/dockerlabs:latest
docker tag 49609002140b archycr/dockerlabs
docker push ArchyCR/dockerlabs
docker push archcr/dockerlabs
docker push archycr/dockerlabs
docker imagenes
docker image
docker images
docker image rm ArchyCR/dockerlabs:latest
docker images
docker push archycr/dockerlabs:latest
docker network create lab
docker network ls
docker run --name multidocker_1 -d --network lab dockerlabs
docker run --name multidocker_2 -d --network lab dockerlabs
docker run --name multidocker_3 -d --network lab dockerlabs
docker ps
pwd
ls
vi loadbalancer.dockerfile
ls
docker build . -f loadbalancer.dockerfile -t loadbalancer
docker ps
docker run --name loadbalancer -dp 8080:80 --restart on-failure --network lab loadbalancer
docker ps
docker logs -f loadbalancer
docker ps
docker rm -f multidocker_1
docker ps
docker logs -f loadbalancer
whoami
clear
docker pull ubuntu:20.04
docker images
docker run -d --name=practica ubuntu:20.04
ps -a
docker ps 
docker ps -a
docker run -d --name=practica ubuntu:20.04 -it
docker rm practica
docker ps -a
docker run -d --name=practica ubuntu:20.04 -it
docker run -d --name=practica ubuntu:20.04
docker ps -a
docker exec -it practica env
docker start practica
docker rm -f practica
docker ps
docker ps -a
docker run -dit --name=practica ubuntu:20.04
docker ps 
docker ps -a
docker inspect practica
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' practica
docker inspect -f '{{range.NetworkSettings.Networks}}' practica
docker inspect -f '{{NetworkSettings.Networks}}' practica
docker inspect -f '{{.NetworkSettings.}}' practica
docker inspect -f '{{NetworkSettings.Networks.IPAddress}}' practica
docker inspect -f '{{NetworkSettings.IPAddress}}' practica
docker inspect -f '{{.NetworkSettings.IPAddress}}' practica
docker inspect -f '{{.NetworkSettings.Networks.IPAddress}}' practica
docker inspect --format '{{.NetworkSettings.Gateway}}' practica
docker inspect practica | grep ipaddress
docker inspect practica | grep IPAddress
docker inspect practica | grep Gateway
docker inspect practica | grep Status
docker rm -f practica
docker rmi ubuntu:20/4
docker rmi ubuntu:20.4
docker rmi Ubuntu:20.4
docker images
docker rmi ubuntu:20.04
docker ps -a
docker images
docker image prune 
docker container prune 
docker run -d --name practica-db mysql:latest
docker imanges
docker images
docker ps 
docker ps -a
docker logs practica-db 
MYSQLnecesita datos
docker rm practica-db 
docker ps -a
docker images\
docker rmi mysql:latest
docker container prune 
docker image prune 
docker system prune 
ls
vi nginx/nginx.conf 
cd nginx/
ls
cd ,,
cd ..
cd proxy/
ks
ls
cd ..
ls
cat loadbalancer.dockerfile 
cat dockerfiles_demo/nginx-loadbalancer.conf 
d
cd
pwd
ls
sudo apt update
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
newgrp docker
ip a
docker network  ls
docker network remove lab 
docker network ls
docker network create --driver bridge --subnet 192.168.0.0/24 net-lab
docker network ls
docker network inspect net-lab
docker pull wbitt/network-multitool
docker run --name server_a --network net-lab -d --ip 192.168.0.2 wbitt/network-multitool
docker run --name server_b --network net-lab -d --ip 192.168.0.3 wbitt/network-multitool
docker run --name server_c --network net-lab -d --ip 192.168.0.4 wbitt/network-multitool
docker ps
docker inspect server_a -f "{{json .NetworkSettings.Networks }}"
sudo apt update && sudo apt-get install -y jq
docker inspect server_a -f "{{json .NetworkSettings.Networks }}" | jq
docker exec server_a ping server_b
docker exec server_a traceroute server_b
docker exec server_a dig  server_b
docker run --name host_a --network host -d wbitt/network-multitool
docker ps -a
docker logs host_a
docker inspect host_a -f "{{json .NetworkSettings.Networks }}" | jq
docker exec host_a ip a
docker exec server_a ip a
docker network create net-privada
docker run -d --name server_privado_a --network net-privada wbitt/network-multitool
docker inspect server_privado_a -f "{{json .NetworkSettings.Networks }}" | jq
ping 172.18.0.2
docker exec server_a ping server_privado_a
docker exec server_a ping 172.18.0.2
docker exec server_a traceroute 172.18.0.2
docker exec server_a ping 172.18.0.2
docker run --name host_b --network none -d wbitt/network-multitool
docker inspect host_b -f "{{json .NetworkSettings.Networks }}" | jq
docker exec host_b ip a
docker ps -a -f status=running -q
docker rm -f $(docker ps -a -f status=running -q)
docker ps
docker ps -a
docker image prune
ls
cd dockerlabs/
ls
mkdir labs
cd labs/
git init
ls
ls -lsa
less .git/
echo "# docker_course" >> README.md
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/archylus/docker_course.git
git push -u origin main
docker exec -it demo-vol2 bash
ls
cd dockerlabs/
ls
docker compose down


docker run -d --name demo-mount -p 8080:80 nginx:stable-alpine
docker inspect demo-mount -f "{{json .Mounts }}"
docker stop demo-mount
docker run -d --name demo-mount -p 8080:80 -v ~/dockerlabs/bind.html:/usr/share/nginx/html/index.html nginx:stable-alpine
docker ps -a
docker stop demo-mount
docker ps -a
docker run -d --name demo-mount -p 8080:80 -v ~/dockerlabs/bind.html:/usr/share/nginx/html/index.html nginx:stable-alpine
cd dockerlabs/
vi bind.html 
docker ps
docker ps -a
docker rm demo-mount
docker ps -a
docker run -d --name demo-mount -p 8080:80 -v ~/dockerlabs/bind.html:/usr/share/nginx/html/index.html nginx:stable-alpine
docker inspect demo-mount -f "{{json .Mounts }}" | jq
docker exec -it demo-mount sh
docker volume create data
docker volume list
docker volume inspect data
docker run -it --rm --name demo-vol --mount source=data,destination=/data ubuntu
sudo ls -a /var/lib/docker/volumes/data/_data
docker run -dit --rm --name demo-vol1 --mount source=data,destination=/data ubuntu
docker run -dit --rm --name demo-vol2 -v data:/data ubuntu
docker exec -it demo-vol1 bash
docker rm -f $(docker ps -a -f status=running -q) && docker image prune
docker ps -a
docker compose version
ls
cd labs/
ls
cd ..
ls
ls -lsa
vi stage.dockerfile 
vi docker-compose.yml
docker compose build
vi docker-compose.yml
docker compose build
docker images
docker compose uo
docker compose up
docker ps -a
docker-compose down
docker compose up
docker rm -f dockerlabs 
docker ps -a
docker compose down 
docker ps -a
docker ps
vi docker-compose.yml 
docker compose config
vi docker-compose.yml 
docker compose config
docker compose config --quiet && printf "OK\n" || printf "ERROR\n"
docker compose build
vi docker-compose.yml 
docker compose up --build -d
vi docker-compose.yml 
docker compose config
vi docker-compose.yml 
docker compose config
docker compose up --build -d
docker ps -a
docker rm loadbalancer 
docker ps -a
docker rm loadbalancer 
docker compose up --build -d
docker compose ps
docker compose logs
docker compose down
docker compose up -d --scale multidocker=3
docker ps -a
cd ..
cd dockerlabs/
cd monitoreo/
docker compose up
docker ps -a
docker compose down
docker compose up
docker compose down
docker compose up
docker compose down
docker compose up
docker compose down
docker compose up
htop
clear
pwd
mkdir Practica2
cd Practica2/
pwd
clear
git clone https://github.com/docker/getting-started.git
docker ps
cd getting-started/app/
vi dockerfile
docker build -t practica2
docker build -t practica2 .
docker images 
docker run -d --name Practica2 -p 8080:3000 practica2
docker ps
docker rm -f Practica2 
docker run -d --name Practica2 -p 8080:3000 practica2
docker rm -f Practica2 
docker run -d --name Practica2 -p 8080:3000 practica2
docker volume create todo-db
docker volume ls
docker rm -f Practica2 
docker run -d --name Practica2 -p 8080:3000 -v todo-db:/etc/todos practica2
docker rm -f Practica2 
docker run -d --name Practica2 -p 8080:3000 -v todo-db:/etc/todos practica2
docker rm -f $(docker ps -a -f status=running -q) && docker image prune
docker image
docker images
clear
cd 
mkdir Practica3
cd Practica3/
vi docker-compose.yml
docker compose up -d
docker ps
docker compose ps
docker compose down
docker compose ps
docker compose up -d
docker volume 
docker volume ls
cp docker-compose.yml first_docker-compose
ls
vi docker-compose.yml 
docker compose ps
docker compose down
docker volume ls
docker volume rm todo-data
docker volume rm practica3_todo-data
docker volume ls
docker compose up -d
docker compose ps
docker volume ls
docker compose down 
docker volume ls
docker compose up -d
docker compose ps
cd ..
pwd
cd Practica2/
ls
pwd
clear
pwd
clear
docker ps
clear
docker compose down 
cd ..
cd Practica3
docker compose down
cd
cd Practica
cd Practica2/
clear
git clone https://github.com/docker/getting-started.git
ls
cd getting-started/
ls
cd ..
rm -r *
rm -rf *
ls
clear
git clone https://github.com/docker/getting-started.git
cd getting-started/app/
vi dockerfile
docker run -d --name Practica2 -p 8080:3000 practica2 
docker rm -f Practica2  Practica2 
docker ps
docker run -d --name Practica2 -p 8080:3000 practica2 
docker volume create todo-db
docker volume ls
docker rm -f Practica2 
docker ps
docker run -d --name Practica2 -p 8080:3000 -v todo-db:/etc/todos practica2 
docker rm -f Practica2 
docker run -d --name Practica2 -p 8080:3000 -v todo-db:/etc/todos practica2 
docker rm -f $(docker ps -a -f status=running -q) && docker image prune
cd
ls
cd
ls
git init
ls
git add .
git commit -m "Trabajo del curso de dockers"
git branch -M main
git remote add origin https://github.com/archylus/CursoDockers.git
git push -u origin main
git reset --soft HEAD~1
git reset --soft 
git reset --soft HEAD~1
echo ".cache/" >> .gitignore
echo "*.deb" >> .gitignore
git add .
git commit -m "Trabajo del curso de dockers"
git init
git add .
git commit -m "Trabajo del curso de dockers"
git push -u origin main
exit
docker exec cpu-demo apk add stress-ng
docker exec -d cpu-demo stress-ng --matrix 1 -t 1m
ls
ls -lsa
git init
git status
git release
git clean
git revert
git init
git add .
git commit -m "Curso Docker"
git branch -M main
git remote add origin https://github.com/archylus/CursoDockers.git
git push -u origin main
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch .cache/code-server/code-server_4.136.2_amd64.deb" --prune-empty --tag-name-filter cat -- --all
echo ".cache/" >> .gitignore
git add .gitignore
git commit --amend --no-edit
git push -u origin main --force
rm -rf .git
echo ".cache/" > .gitignore
echo "*.deb" >> .gitignore
git init
echo ".cache/" > .gitignore
echo "*.deb" >> .gitignore
git add .
git commit -m "Trabajo en Curso Dockers"
git branch -M main
git remote add origin https://github.com/archylus/CursoDockers.git
git push -u origin main --force
rm -rf .git
git init
echo ".cache/" > .gitignore
echo ".local/" >> .gitignore
echo "*.deb" >> .gitignore
git add .
git commit -m "Trabajo en Curso Dockers"
docker images
docker ps
docker ps -a
docker pull redis:3.2.11-alpine
docker images
docker save redis:3.2.11-alpine > redis.tar
tar -xvf redis.tar
ls
cat repositories
cat index.json 
docker imagess
docker imagees
docker images
docker top primero
docker run -d --name primero redis:3.2.11-alpine
docker top primero
docker pause primero
docker top primero
docker unpause primero
docker top primero
docker stop primero
docker tag segundo:2.0
docker start primero
docker exec -it primero env
docker exec -it primero sh
docker images
docker tag redis:alpine segundo>2.0
docker tag redis:alpine segundo:2.0
docker tag redis:alpine tercero:3.0
docker images
docker stop primero
docker images
docker ps
docker ps -a
docker rm primero
docker ps -a
docker ps
cd
pwd
cd dockerlabs/
docker build --build-arg AUTOR="Archy" -t demowebsite:2.0 .
docker images
docker run -d --name website -p 8080:80 demowebsite:2.0
docker ps
docker exec website li
docker exec website ls
docker exec website website pwd
docker exec website pwd
docker exec website env
docker build --build-arg AUTOR="Archy" -t demowebsite:3.0 .
docker images
docker stop website 
docker ps
docker run -d --name website -p 8080:80 demowebsite:3.0
docker rm website 
docker run -d --name website -p 8080:80 demowebsite:3.0
docker run -d --name website -p 8080:80 demowebsite:4.0
docker build --build-arg AUTOR="Archy" -t demowebsite:4.0 .
docker run -d --name website -p 8080:80 demowebsite:3.0
docker stop website 
docker rm website 
docker run -d --name website -p 8080:80 demowebsite:4.0
host
docker exec website host
docker exec website uname -a
docker exec website uname -r
uname -r
docker build . -f demo.dockerfile -t dockerlabs
docker images
docker ps
docker rm website
docker rm -f  website
docker run -p 8080:8080 dockerlabs:latest
docker ps
docker images
docker pull cachac/dockerlabs_base:node14 
docker ps -a
docker images
docker network ls
docker -s
docker ps
docker network create lab
docker ps
docker network create lab
docker network ls
docker run --name multidocker_1 -d --network lab dockerlabs
docker run --name multidocker_2 -d --network lab dockerlabs
docker run --name multidocker_3 -d --network lab dockerlabs
docker ps -a
docker start multidocker_3
docker rm multidocker_2
docker rm multidocker_3
docker run --name multidocker_2 -d --network lab dockerlabs
docker run --name multidocker_3 -d --network lab dockerlabs
docker ps -a
docker build . -f loadbalancer.dockerfile -t loadbalancer
docker ps
docker run --name loadbalancer -dp 8080:80 --restart on-failure --network lab loadbalancer
docker ps
docker logs -f loadbalancer 
docker stop multidocker_*
docker stop multidocker_
docker stop multidocker_1
docker stop multidocker_2
docker stop multidocker_3
ip a
docker network ls
docker network remove lab
docker stop loadbalancer 
docker network remove lab
docker network create --driver bridge --subnet 192.168.0.0/24 net-lab
docker network ls
docker network inspect net-lab 
docker pull wbitt/network-multitool
docker run --name server_a --network net-lab -d --ip 192.168.0.2 wbitt/network-multitool
docker run --name server_b --network net-lab -d --ip 192.168.0.3 wbitt/network-multitool
docker run --name server_c --network net-lab -d --ip 192.168.0.4 wbitt/network-multitool
docker ps
docker inspect server_a -f "{{json .NetworkSettings.Networks }}"
sudo apt update && sudo apt-get install -y jq
docker inspect server_a -f "{{json .NetworkSettings.Networks }}" | jq
docker ps
docker exec server_a ping server_b
docker exec server_a traceroute server_b
docker exec server_a dig server_b
docker run --name host_a --network host -d wbitt/network-multitool
docker ps -a
docker logs host_a
docker exec host_a ip a
docker exec server_a ip a
docker exec host_a ip a
docker network create net-privada
docker run -d --name server_privado_a --network net-privada wbitt/network-multitool
docker inspect server_privado_a -f "{{json .NetworkSettings.Networks }}" | jq
ping 172.18.0.2
docker exec server_a ping server_privado_a
docker ps
docker exec server_a ping 172.19.0.2
docker rm -f $(docker ps -a -f status=running -q)
docker run -d --name sin-limite dockerlabs
docker run -d --memory-swap 100m --memory 100m --name mem-demo dockerlabs
docker ps
docker stats
docker run -d --rm --cpus="0.5" --memory 100m --name cpu-demo dockerlabs
docker stats cpu-demo
docker rm -f $(docker ps -a -f status=running -q)
docker run -d --name demo-mount -p 8080:80 nginx:stable-alpine
docker inspect demo-mount -f "{{json .Mounts }}"
docker stop demo-mount
docker run -d --name demo-mount -p 8080:80 -v ~/dockerlabs/bind.html:/usr/share/nginx/html/index.html nginx:stable-alpine
docker ps -a
docker rm demo-mount 
docker run -d --name demo-mount -p 8080:80 -v ~/dockerlabs/bind.html:/usr/share/nginx/html/index.html nginx:stable-alpine
docker inspect demo-mount -f "{{json .Mounts }}" | jq
docker ps
docker exec -it demo-mount sh
docker volume create data
docker volume list
docker volume inspect data
docker volume create archy
docker volume inspect archy
docker run -it --rm --name demo-vol --mount source=data,destination=/data ubuntu
sudo ls -a /var/lib/docker/volumes/data/_data
docker run -dit --rm --name demo-vol1 --mount source=data,destination=/data ubuntu
docker run -dit --rm --name demo-vol2 -v data:/data ubuntu
docker exec -it demo-vol1 bash
docker rm -f $(docker ps -a -f status=running -q)
