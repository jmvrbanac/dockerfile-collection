Simple Dockerized Barbican
===========================

Warning: This is a personal docker image that is designed to aid
in the development and testing of Barbican.

**Here be Dragons! Use at your own risk!!**

Starting a container
----------------------

```
sudo docker run \
    -p 9311:9311 \
    -v $LOCAL_BARBICAN_CONFIGS:/etc/barbican \
    --name barbican \
    -t jmvrbanac/simple-barbican
```

About the image
-------------
Exposed Ports:

 * ```9311``` - Public API Endpoint
 * ```9312``` - Admin API Endpoint

This image is expecting a volume containing all required
configuration files for Barbican or a link to a Keystone
container.