FROM free5gc/webconsole-base:latest AS builder
FROM bitnami/minideb:bullseye

LABEL description="Free5GC open source 5G Core Network" \
    version="Stage 3"

ENV F5GC_MODULE=webui
ENV DEBIAN_FRONTEND=noninteractive
ARG DEBUG_TOOLS

# Set working dir
WORKDIR /free5gc
RUN mkdir -p config/ public/

# Copy executable, frontend static files and default configuration
COPY --from=builder /free5gc/${F5GC_MODULE} ./
COPY --from=builder /free5gc/public ./public

# Config files volume
VOLUME [ "/free5gc/config" ]

# WebUI uses the port 5000
EXPOSE 5000
# BillingDomain uses the port 2121 as FTP
EXPOSE 2121