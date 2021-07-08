# NetworkUtility
A Docker container to help debug networking issues.
## Usage

```bash
$ docker run --name networkutility -d -e TRACERT=google.com -e NMAP=google.com -e DIG=google.com neerpatel/dns

```
### Enviroment Variables
    All the variables are optional.
    - TRACERT : tracerout
    - NMAP    : nmap
    - DIG     : dig