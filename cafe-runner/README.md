How to run:
==================

 * Add/edit config ```{HOST_MOUNT_DIR}/configs/{product}/{config_name}.config```
 * Run the docker image specifying the host mounting directory

Starting a container with the image
-------------------------------------
 ```
 sudo docker run -v {HOST_MOUNT_DIR}:/cafe/volume -t jmvrbanac/cafe-runner {CAFE-RUNNER-ARGS}
 ```