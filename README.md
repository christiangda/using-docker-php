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

docker push christiangda/kafka:openjdk-8-2.10-0.10.2.1
docker push christiangda/kafka:2.10-0.10.2.1
```
