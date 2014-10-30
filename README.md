orbit-docker
============

This is a short example of a docker for orbit running on lighttpd.

Build
======
```
docker build -t harmonics/orbit .
```
Run
======

You can start the lighttpd server running orbit with

```
docker run -d -v `pwd`/app:/var/www -p 80:80 harmonics/orbit

```

and access your website on

```
http://localhost
```

when you have the `index.lua` in the `app` directory. In general you can map your orbit application directory to `/var/www` and make sure an `index.lua` is existing.

You can modify the lighttpd config `config/lighttpd.conf` to support more extensions. Don't forget to rebuild the docker container after the changes to the config.

Notes
=======

This is my first attempt with docker so feel free to propose better solutions!
