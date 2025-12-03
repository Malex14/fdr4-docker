FROM ubuntu:16.04

RUN apt update \
    && apt install -y wget gnupg apt-transport-https \
    && echo "deb http://dl.cocotec.io/fdr/debian/ fdr release\n" > /etc/apt/sources.list.d/fdr.list \
    && wget -qO - http://dl.cocotec.io/fdr/linux_deploy.key | apt-key add - \
    && apt update \
    && apt install fdr libxft2 libxdamage1 libxfixes3 libx11-xcb1 libxxf86vm-dev libxi6 libgconf-2-4 -y \
    && mkdir -p /etc/pki/tls/certs/ \
    && cp /etc/ssl/certs/ca-certificates.crt /etc/pki/tls/certs/ca-bundle.crt \
    && apt clean cache

CMD [ "fdr4" ]