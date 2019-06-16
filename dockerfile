FROM marvinmarvin/docker-k8s-rclone
RUN apt-get update -y && \
    apt-get install git python python-pip -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install github-backup && github-backup -v
RUN which pip
RUN which github-backup
RUN mkdir /root/github-backup
