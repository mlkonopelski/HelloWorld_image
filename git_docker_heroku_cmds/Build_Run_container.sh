docker pull https://github.com/mlkonopelski/HelloWorld_image.git  master

cd ..
docker build HelloWorld_image -t helloworld_image

docker run\
-d \
--name helloworld_container\
-p 8000:8080 \
-v /home/mateusz-ubuntu/Documents/Projects/LocalData/HelloWorld_data:/app/DATA \
helloworld_image

docker run \
-d \
--name helloworld_container \
-p 8000:8080 \
helloworld_image