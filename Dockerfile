FROM alpine:latest

EXPOSE 8118 

RUN apk --update --no-cache add privoxy 

RUN chown privoxy.privoxy /etc/privoxy/* 

ENTRYPOINT ["privoxy"] 

CMD ["--no-daemon","--user","privoxy","/etc/privoxy/config"]
