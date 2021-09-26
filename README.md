# docker-hivemq-mqtt-client
Docker image for HiveMQ MQTT Web Client

## Usage
### Pull docker image from [Docker Hub](https://hub.docker.com/r/nasrul21/hivemq-mqtt-client)
```
docker pull nasrul21/hivemq-mqtt-client
```
### How To Run
#### Using Docker CLI
```
docker run -d -p 9090:80 --name=nasrul21/hivemq-mqtt-client nasrul21/hivemq-mqtt-client
```
and then open `http://localhost:9090` on your browser.

#### Using Docker Compose
Create docker-compose file
```yaml
# docker-compose.yaml
version: "3.9"
services:
  client:
    image: nasrul21/hivemq-mqtt-client
    ports:
    - "9090:80"
```
Run docker compose
```
docker-compose up
```
