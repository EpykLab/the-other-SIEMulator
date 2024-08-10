# 🛡️ The Other SIEMulator

Welcome to **The Other SIEMulator**! This project provides an easy-to-deploy SIEM (Security Information and Event Management) environment for practicing cybersecurity skills. Whether you're new to IT or looking to sharpen your blue team capabilities, this project is for you!

## 📚 Overview

**The Other SIEMulator** leverages Docker to spin up a complete SIEM environment featuring Wazuh. You'll have multiple servers set up as network hosts, enrolled in a Wazuh cluster. This setup is perfect for training in detection, incident response, and other essential cybersecurity tasks.

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/EpykLab/the-other-SIEMulator.git
    cd the-other-SIEMulator/single-node
    ```

2. **Set up the certs**:
    ```bash
    docker-compose -f generate-indexer-certs.yml run --rm generator 
    ```

3. **Build and start the environment**:
    ```bash
    docker-compose up --build
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

## 🛠️ Usage

Username: admin
Password: SecretPassword


- **Wazuh Dashboard**: Access the Wazuh dashboard via your browser at `https://localhost`.
- **Simulate Attacks**: Use the environment to simulate attacks and practice incident response.
- **Explore Logs**: Dive into the logs collected by the SIEM to understand how different events are captured and analyzed.

## 🤝 Contributing

Contributions are welcome! If you have suggestions for improvements or additional features, feel free to submit a pull request or open an issue.

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
