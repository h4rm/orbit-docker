orbit-docker
============

This is a short example of a docker for orbit running on lighttpd.

Build
======
```
docker build -t orbit-docker .
```
Run
======

You can start the lighttpd server running orbit with

```
docker run -d -v `pwd`:/etc/lighttpd -v `pwd`/app:/var/www -p 80:80 orbit-docker

```

and access your website on

http://localhost

when you have the `hello.lua` in the `app` directory. You can modify the lighttpd config to support more extension or different document roots.

Notes
=======

This is my first attempt with docker so feel free to propose better solutions!
