#create 'test' machine on virtualbox
#docker-machine create --driver virtualbox test

#start docker-machine 'test'
docker-machine start test

#command to configure shell 
eval $(docker-machine env test)

#start existing container
docker start cppbc

#run bash in 'cppbc' conteiner [after start]
docker exec -it cppbc bash

##################################################

#build image using Dockerfile in current directory
#docker build -t myubu .

#create container 'cppbc' based on image 'myubu'
#docker run -dit --name cppbc myubu

#create container 'cppbc' based on image 'myubu'
#and sync local dir with the one in container
#docker run -it -v /Users/afesyk/Desktop/gl/:/gl

#copy local folder to container
#docker cp ~/Desktop/gl cppbc:/
