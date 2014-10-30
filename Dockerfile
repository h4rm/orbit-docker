# DOCKER-VERSION 0.3.4
FROM ubuntu

RUN apt-get update && apt-get install -y luarocks sqlite3 libsqlite3-dev git libssl-dev libssl1.0.0 libfcgi-dev vim lighttpd
RUN apt-get clean

RUN luarocks install luasocket
RUN luarocks install luafilesystem
RUN luarocks install luasec OPENSSL_LIBDIR=/usr/lib/x86_64-linux-gnu
RUN luarocks install wsapi-fcgi
RUN luarocks install cosmo
RUN luarocks install md5
RUN luarocks install luasql-sqlite3
RUN luarocks install luacrypto
RUN luarocks install lbase64
RUN luarocks install lunit
RUN luarocks install luajson
RUN luarocks install markdown
RUN luarocks install https://raw.github.com/keplerproject/orbit/master/rockspec/orbit-2.2.1-1.rockspec

EXPOSE  80
ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
