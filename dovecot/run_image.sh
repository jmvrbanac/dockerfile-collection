#!/bin/bash

config_dir=`readlink -f configs/`
config_mount=$config_dir":/etc/dovecot"

start_dovecot() {
	pre_args=$1
	post_args=$2

	sudo docker run -v $config_mount -p 1143:143 $pre_args jmvrbanac/dovecot $post_args
}

run_bash() {
	start_dovecot "-t -i" "/bin/bash"
}

run_service() {
	start_dovecot
}

case "$1" in
  bash)
    run_bash
    ;;
  service)
    run_service
    ;;

  *)
    echo "Usage: run_image.sh  {bash, service}"
    exit 1
esac