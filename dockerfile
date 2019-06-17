FROM marvinmarvin/docker-k8s-rclone
RUN apt-get update -y && \
    apt-get install git python3 python3-pip wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip3 install github-backup && github-backup -v
RUN mkdir /root/github-backup
