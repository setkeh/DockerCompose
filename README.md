# DockerFiles
My Dockerfiles, Docker-Compose And Fleetctl units


Bootstrap.sh should be able to setup some basic stuff on the coreOS hosts, Ill figure out a better way of bootstrapping later.

Im Dropping CoreOS as they are dropping support for fleet which sucks because its possibly the coolest peice of software out,
~~ill look into Kubernetes on Centos7 as an Alternative based on the guide at https://www.vultr.com/docs/getting-started-with-kubernetes-on-centos-7~~
The Cluster is currently running in GCE with the GKE Deployment Methods from the Kubernetes Documentation.

TODO:
======
* Make the HAProxy Configuration More Automated with the ETCD cluster probably.
* Make the Ghost and Wordpress Containers register with ETCD to help with Loadbalancing and Automation.
* Fix Password management so PlaceHolder Passwords Arnt being Pushed into Git.
* Get Better at Kubernetes.