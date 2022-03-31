FROM alpine:3.12

LABEL maintainer="chiangwanyi@163.com"

COPY ./clash config.yaml install.sh /tmp/

RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.12/main/" > /etc/apk/repositories \
        && apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash \
        && bash /tmp/install.sh \
	&& rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/clash/clash", "-f", "/usr/local/bin/clash/config.yaml"]

