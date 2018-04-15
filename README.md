# Unoffical GRR Docker image


## Official GRR
GRR (Gestion et réservation de ressources) is a free software for collaborative management of reservations.
This software is written in PHP based on MySQL, and runs on any classic Web server.
Site: https://site.devome.com/fr/grr3

## Usage with linked server
Starting a grr instance is simple:
```
docker run --name grr -e MSYSQL_HOST=db -p 8080:80 inox42/grr:tag
```

## docker-compose exemple
Example grr.yml for mariadb:

```
# Use root/example as user/password credentials
version: '2'

services:

  db:
    image: mariadb:10.3.5
    volumes:
      - ./db:/var/lib/mysql:rw
    environment:
      - MYSQL_ROOT_PASSWORD=rootpassword
      - MYSQL_DATABASE=grr
      - MYSQL_USER=grruser
      - MYSQL_PASSWORD=userpassword
    ports:
      - 3306:3306
    restart: always

  grr:
    image: inox42/grr
    environment:
      - MYSQL_HOST=db
      - MYSQL_DATABASE=grr
      - MYSQL_USER=grruser
      - MYSQL_PASSWORD=userpassword
    links:
      - db 
    ports:
      - 8080:80
    restart: always

```
Run with docker-compose:
```
docker-compose -f $(pwd)/grr.yml -d grr
```

## Environment Variables
When you start the grr image, you can adjust the configuration of the grr instance by passing one or more environment variables on the docker run command line.

``MYSQL_HOST``
This variable is optional and allows you to specify the address of a database host.
Default value: db

``MYSQL_PORT``
This variable is optional and allows you to specify the port of the database host. 
Default value: 3306

``MYSQL_DATABASE``
This variable is optional and allows you to specify the name of the grr's database.
Default value: grr

``MYSQL_PREFIX``
This variable is optional and allows you to specify the prefix of the grr's database tables.

``MYSQL_USER``
This variable is optional and allows you to specify the user of the database.
Default value: grr

``MYSQL_PASSWORD``
This variable is optional and allows you to specify the password user of the database.
Default value: grr
