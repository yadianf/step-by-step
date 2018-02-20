# login into docker-machine hosts default
docker-machine ssh default

# get the IP from your default docker machine
docker-machine ip default

# list images
docker images
docker-machine ls

# get containers id
	docker ps

# Print app output
	docker logs <container id>

# bash image
	docker exec -it <container id> bash
	docker exec -it <container id> /bin/bash
	docker exec -u root  -it <container id> bash

# run image port 49001
	docker run -d -p 49001:8080 -v $PWD/jenkins:/var/jenkins_home -t jenkins/jenkins
	docker run -p 49001:8080 -d <your username>/app

# stop
	docker stop 7db7b29e5b1d

# 
	docker-compose -f src/main/docker/cassandra.yml up -d

# build your image
	docker build -t <your username>/app

 
# Export and import
You can pull the image on a computer that have access to the internet.

	docker pull ubuntu

Then you can save this image to a file

	docker save -o ubuntu_image.docker ubuntu

Transfer the file on the offline computer (USB/CD/whatever) and load the image from the file:

	docker load ubuntu_image.docker