FROM ubuntu:14.04
# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y wget lsb-release && \
  rm -rf /var/lib/apt/lists/*

COPY startup.sh . 

RUN \
  wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.8.0-1_amd64.deb && sudo WAZUH_MANAGER='wazuh.manager' WAZUH_AGENT_GROUP='linux' WAZUH_AGENT_NAME='1404' dpkg -i ./wazuh-agent_4.8.0-1_amd64.deb

CMD ["/bin/bash", "./startup.sh"]
