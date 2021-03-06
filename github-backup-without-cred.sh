# github-backup
SHELL=/bin/bash
GITHUB_USER=<INSERT>
TOKEN=<INSERT>
/usr/local/bin/github-backup $GITHUB_USER --token=$TOKEN --repositories --all --output-directory=$GITHUB_USER --private --gists --starred-gists > /proc/1/fd/1 2>/proc/1/fd/2 && tar -zcvf root-github-backup.tar.gz /root/github-backup/`date +\%F`/$GITHUB_USER > /proc/1/fd/1 2>/proc/1/fd/2 && mv root-github-backup.tar.gz github-backup-`date +\%F`.tar.gz && rm -rf /root/github-backup/`date +\%F`/$GITHUB_USER && /usr/bin/rclone copy -c -v -L --drive-pacer-min-sleep=100ms --bwlimit=10M --drive-chunk-size=128M --tpslimit=100 --checkers=50 --retries=20 --transfers=10 --drive-acknowledge-abuse local:/root/github-backup/`date +\%F` gdrive:_backups/github_gist/`date +\%F` > /proc/1/fd/1 2>/proc/1/fd/2
