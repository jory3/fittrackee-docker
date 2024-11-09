# FitTrackee Project

## Overview

Run FitTrackee in docker. The compose files include redis and Postgres. 

## Run FitTrackee using images from docker hub

I create docker images using the Dockerfile fro this project and upload them to Docker Hub. Follow the instructions below 
to run FitTrackee using this images. 

### Clone the Repository

First, clone the repository from GitHub:

```sh
git clone https://github.com/yourusername/fittrackee.git
cd fittrackee
```
### Configure

Configure the environment variables in `docker-compose.yml`. See the FitTrackee documentation for details: https://samr1.github.io/FitTrackee/en/installation.html

### Starting the Services

To start the services, run the following command in the directory containing your `docker-compose.yml` file:

```sh
docker-compose up
```

This will pull the necessary images, create the containers, and start the services.

### Stopping the Services

To stop the services, press `Ctrl+C` in the terminal where `docker-compose up` is running, or run:

```sh
docker-compose down
```

## Build your own images

To build your own images instead of using my images from docker hub, follow the instructions above but replace `docker-compose.yml` by `docker-compose-build.yml`. 

## Configure admin user

Once the services are running, you can access the web application by navigating to http://localhost:8000 in your browser.

Click `Regster` and add username, password and email address. New created users are not activated by default. Users can 
be activated either by making them admin or by just activating them. 

### Give a user admin permissions

To make a user admin and to activate it at the same time, run the following command. Replace <username> by the username you chose before. 
```sh
docker compose exec -it web ftcli users update <username> --set-admin 1
```

### Activate a user without giving it admin permissions
```sh
docker compose exec -it web ftcli users update <username> --activate
```

## Contributing

Feel free to fork this project and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.

