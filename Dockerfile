  
FROM ubuntu:latest
RUN set -x && \
# create nginx user/group first, to be consistent throughout docker variants
    addgroup --system --gid 101 netutil && \
    adduser --system --disabled-login --ingroup netutil --no-create-home --home /nonexistent --gecos "netutil user" --shell /bin/false --uid 101 netutil && \
    apt-get update && apt-get upgrade -y && \ 
    apt-get install -yq iproute2 traceroute curl dnsutils netcat-openbsd jq nmap net-tools tcpdump && \ 
    apt-get clean &&  rm -rf /var/lib/apt/lists

# make sure root login is disabled
RUN sed -i -e 's/^root::/root:!:/' /etc/shadow

COPY docker-entrypoint.sh /usr/local/bin
RUN chown -R netutil:netutil /usr/local/bin/docker-entrypoint.sh && \
    chmod 777 /usr/local/bin/docker-entrypoint.sh && \
    ln -s /usr/local/bin/docker-entrypoint.sh /

USER  netutil

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
