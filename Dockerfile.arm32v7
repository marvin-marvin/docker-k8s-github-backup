### in case of local build
#FROM golang:1.12.0 AS builder
#WORKDIR /builder/working/directory
#RUN curl -L https://github.com/balena-io/qemu/releases/download/v3.0.0%2Bresin/qemu-3.0.0+resin-arm.tar.gz | tar zxvf - -C . && mv qemu-3.0.0+resin-arm/qemu-arm-static .

FROM marvinmarvin/docker-k8s-rclone:arm32v7
#COPY --from=builder /builder/working/directory/qemu-arm-static /usr/bin
ADD qemu-arm-static /usr/bin
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends git python3 python3-pip wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip3 install github-backup && github-backup -v
RUN mkdir /root/github-backup
RUN mkdir /workdir
