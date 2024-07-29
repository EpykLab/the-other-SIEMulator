# The other SIEMulator

## What is the SIEMulator

The siemulator is a docker network that privisions the Wazuh SIEM tools
along with a handful of severs that are enrolled in the Wazuh cluster. 
This enables the students to train on a siem with minimal compute
resources as for free. 


## Installation

To get the this all working, there are several installations that you
will need to install docker. Follow the installation instructions for
you operating system.

## Setting everything up with docker-compose

```bash
# macos and windows
docker-compose up -d
```

```bash
# linux installations
sudo -E docker-compose up -d
```

The wazuh agent is already installed on all the endpoints. Howevever, due
to some limitations between how docker and the wazuh agent operated, the 
agent will need to be manually started on all the endpoints that you want 
enrolled in the wazuh server. 

```bash
docker-compose ps
```

Find the name/id of all the endpoints you want to start the agent on:

```bash
sudo docker exec single-node-wazuh.endpoint1404-1 /bin/bash -c "service wazuh-agent start"
```


## Logging into the Interface

Launch a browser and navigate to `https://localhost`. You will be 
presented with a certificate warning, you can ignore all of these.

Username: admin
Password: SecretPassword
