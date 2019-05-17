FROM 	alpine:latest
MAINTAINER      GeekerXu@"flyxuchao@gmail.com"

ADD vlmcsdmulti-x64-musl-static /usr/local/bin/
EXPOSE 	1688
CMD [ "/usr/local/bin/vlmcsdmulti-x64-musl-static", "-D" ]
