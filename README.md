# apache-php7-fpm

How to use my docker-php as base

How to build
```
docker build --rm \
  --build-arg APP_NAME="The best php app, jejejeje" \
  --build-arg APP_VERSION=1.0.0 \
  --tag christiangda/myapp:1.0.0 \
  --tag christiangda/myapp:latest .

docker run --tty --interactive --rm --name myapp \
  --publish 80:80 \
  christiangda/myapp:latest
```

running my php local app, assuming it is in `.`
```
docker run --tty --interactive --rm --name myapp \
  --publish 80:80 \
  --volume .:/var/www/html
  christiangda/myapp:latest
```


CI
```
cd
mkdir -p $HOME/docker/volumes/jenkins/home

docker run \
  --name jenkinsblue \
  -group-add=$(stat -c %g /var/run/docker.sock) 
  -d \
  -p 8080:8080 \
  -v $HOME/docker/volumes/jenkins/home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean

docker run \
  --name jenkinslts \
  -group-add=$(stat -c %g /var/run/docker.sock) 
  -d \
  -p 8080:8080 \
  -v $HOME/docker/volumes/jenkins/home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:lts  
```

