# docker-grr
Unoffical GRR Docker image


## Official GRR
GRR (Gestion et réservation de ressources) is a free software for collaborative management of reservations.
This software is written in PHP based on MySQL, and runs on any classic Web server.
Site: https://site.devome.com/fr/grr3

## Usage with linked server
Starting a grr instance is simple:
```
docker run --name grr -e MSYSQL_HOST=db -p 8080:80 inox42/grr:tag
```

## Compose exemple
TODO

## Environment Variables
When you start the grr image, you can adjust the configuration of the grr instance by passing one or more environment variables on the docker run command line.

### MYSQL_HOST
### MYSQL_PORT
### MYSQL_DATABASE
### MYSQL_PREFIX
### MYSQL_USER
### MYSQL_PASSWORD
