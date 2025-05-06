FROM bitnami/minideb:bullseye

ENV DEBIAN_FRONTEND noninteractive
ARG DEBUG_TOOLS

RUN apt-get update && apt-get install -y strace net-tools iputils-ping curl netcat tcpdump

# Install UPF dependencies
RUN apt-get update \
    && apt-get install -y libmnl0 libyaml-0-2 iproute2 iptables \
    && apt-get clean

WORKDIR /root

VOLUME [ "/root" ]