orbit-docker
============

This is a short example of a docker for orbit running on xavante.

Build
======

docker build -t orbit-docker .

Run
======

You can start the orbit xavante server running orbit with

```
docker run -p 8080:8080 -d -v=`pwd`:/home -w=/home orbit-docker
```

and access your website on

http://localhost:8080/page.lua

when you have the page.lua in your current directory.

Notes
=======

This is my first attempt with docker so feel free to propose better solutions!
