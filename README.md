# DockerFiles
My Dockerfiles and Docker-Compose Configuration

Currently im utilizing Docker Swarm and Drone.IO for CI/CD and container orchestration.
This is collection of my swarm stacks using compose and any custom docker files i write for custom containers.

#### Drone.IO

`docker stack deploy --compose-file docker-compose.yml DroneIO`

#### ELK Stack (Docker Swarm)

`docker stack deploy --compose-file docker-compose.yml Logging`

#### Grafana / Cadvisor / Node-Exporter / Docker-Exporter / AlertManager / Prometheus Logging Dashboards

`docker stack deploy --compose-file docker-compose.yml Monitoring`

The Grafana Dashboard to go along with these stacks can be found [HERE](https://grafana.com/dashboards/609)

#### Openvpn
This container is not swarm ready atm and will need some work but is likely to be replace by Pritunl

#### Registry / Registry-UI

`docker stack deploy --compose-file docker-compose.yml Redistry`


TODO:
======
* Fix Password & Key management so PlaceHolder Passwords & Keys Arnt being Pushed into Git.

Borrowed/Shamlessly stolen Compose and Docker files:
====

[bvis/docker-prometheus-swarm](https://github.com/bvis/docker-prometheus-swarm)