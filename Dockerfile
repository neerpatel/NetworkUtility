  
FROM ubuntu:latest
RUN apt-get update && apt-get install -yq iproute2 traceroute curl dnsutils netcat-openbsd jq nmap net-tools && apt-get clean && rm -rf /var/lib/apt/lists

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["docker-entrypoint.sh"]