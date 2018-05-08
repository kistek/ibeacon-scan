FROM ubuntu:18.04

ENTRYPOINT ["/usr/local/bin/start_ibeacon_scanning"]

RUN env DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -yy \
        bluez \
        bluez-hcidump \
        socat && \
    apt-get clean

COPY bin/* /usr/local/bin/
