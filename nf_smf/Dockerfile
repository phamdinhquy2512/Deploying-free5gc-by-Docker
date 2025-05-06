FROM free5gc/smf-base:latest AS builder
FROM bitnami/minideb:bullseye

LABEL description="Free5GC open source 5G Core Network" \
    version="Stage 3"

ENV F5GC_MODULE=smf
ARG DEBUG_TOOLS

RUN apt-get update && apt-get install -y strace net-tools iputils-ping curl netcat tcpdump

# Set working dir
WORKDIR /free5gc
RUN mkdir -p config/ log/ cert/

# Copy executable and default certs
COPY --from=builder /free5gc/${F5GC_MODULE} ./
COPY --from=builder /free5gc/cert/${F5GC_MODULE}.pem ./cert/
COPY --from=builder /free5gc/cert/${F5GC_MODULE}.key ./cert/

# Config files volume
VOLUME [ "/free5gc/config" ]

# Certificates (if not using default) volume
VOLUME [ "/free5gc/cert" ]

# Exposed ports
EXPOSE 8000
