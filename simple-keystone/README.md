Simple Dockerized Keystone
===========================

Warning: This is a personal docker image that is designed to aid
in the development and testing of projects that use Keystone
middleware for authenication and authorization.

**Here be Dragons! Use at your own risk!!**

Starting a container
----------------------

```
sudo docker run -p 5000:5000 -p 35357:35357 -t jmvrbanac/simple-keystone
```

Once the Container has been started you can add tenant, roles,
and users via the Admin API.


About the image
-------------
Exposed Ports:

 * ```5000``` - Public API Endpoint
 * ```35357``` - Admin API Endpoint

Default Keystone administrator user:

 * Username: ```admin```
 * Password: ```password```
