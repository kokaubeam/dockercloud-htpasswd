# dockercloud-htpasswd

[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)

Adds a user to an htpasswd file using a container

## Usage

```
docker run -v $(pwd)/auth:/auth -e USERNAME="username" -e PASSWORD="password" kokaubeam/dockercloud-htpasswd
```

With options:

```
docker run -v $(pwd)/auth:/auth -e USERNAME="username" -e PASSWORD="password" -e OPTIONS="B" kokaubeam/dockercloud-htpasswd
```

## Usage in Docker Cloud

Recommend using this image in Docker Cloud as follows:

```
htpasswd:
  image: kokaubeam/dockercloud-htpasswd
  deployment_strategy: every_node
  autodestroy: always
  environment:
    - "PASSWORDFILE=/auth/htpasswd"
    - "OPTIONS=B"
    - "USERNAME="
    - "PASSWORD="
  volumes:
    - /auth:/auth:rw
```
