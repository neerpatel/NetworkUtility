# NetworkUtility
A Docker container to help debug networking issues.

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/neerpatel/networkutility)

## Usage

```bash
$ docker run --name networkutility -d -e TRACERT=google.com -e NMAP=google.com -e DIG=google.com -e TCPDUMP ghcr.io/neerpatel/networkutility:main

```
### Enviroment Variables
    All the variables are optional.
    - TRACERT : traceroute
    - NMAP    : nmap
    - DIG     : dig
    - TCPDUMP : tcpdump 
