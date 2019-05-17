FROM 	alpine:latest
MAINTAINER      GeekerXu@"flyxuchao@gmail.com"

RUN	cd /tmp/
RUN	wget https://github.com/Wind4/vlmcsd/releases/download/svn1112/binaries.tar.gz
RUN	tar -zxvf binaries.tar.gz
RUN	cp /tmp/binaries/Linux/intel/static/vlmcsdmulti-x64-musl-static /usr/local/bin/
RUN	rm -rf /tmp/binaries
RUN	rm -rf /tmp/binaries.tar.gz
CMD	vlmcsdmulti-x64-musl-static vlmcsd -L 0.0.0.0:1688 -e -D
EXPOSE 	1688
