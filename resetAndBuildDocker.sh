# BUILD
docker container rm tamarin-container 
docker rmi tamarin-image
docker build --tag tamarin-image -f Dockerfile .
