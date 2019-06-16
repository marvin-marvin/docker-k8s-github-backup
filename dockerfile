FROM marvinmarvin/docker-k8s-rclone
RUN apt-get install git python python-pip
RUN pip install github-backup && github-backup -v
RUN which pip
RUN which github-backup
