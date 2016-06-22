FROM		alpine:3.3
MAINTAINER	Orbweb Inc. <engineering@orbweb.com>

RUN 		apk update && \
			apk add socat && \
			rm -r /var/cache/

ADD 		run.sh /bin/run.sh

ENTRYPOINT 	["/bin/run.sh"]
