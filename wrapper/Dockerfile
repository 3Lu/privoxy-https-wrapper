FROM alpine:latest

EXPOSE 8079 8081

RUN apk --update --no-cache add python3 python3-dev gcc libffi-dev libressl-dev musl-dev && \
find / -type d -name __pycache__ -exec rm -r {} +   && \
    rm -r /usr/lib/python*/ensurepip                    && \
    rm -r /usr/lib/python*/lib2to3                      && \
    rm -r /usr/lib/python*/turtledemo                   && \
    rm /usr/lib/python*/turtle.py                       && \
    rm /usr/lib/python*/webbrowser.py                   && \
    rm /usr/lib/python*/doctest.py                      && \
    rm /usr/lib/python*/pydoc.py                        && \
    rm -rf /root/.cache /var/cache /usr/share/terminfo && \
    mkdir /etc/ProxHTTPSProxy && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade setuptools && \
    pip3 install colorama && \
    pip3 install urllib3 && \
    pip3 install pyOpenSSL && \
    pip3 install PySocks && \
    apk del python3-dev gcc libffi-dev libressl-dev musl-dev

RUN mkdir /etc/ProxHTTPSProxy/cert && mkdir /etc/ProxHTTPSProxy/config && mkdir /etc/ProxHTTPSProxy/Certs
COPY ProxHTTPSProxy/* /etc/ProxHTTPSProxy/ 
RUN chmod +x /etc/ProxHTTPSProxy/ProxHTTPSProxy.py

ENTRYPOINT ["/etc/ProxHTTPSProxy/ProxHTTPSProxy.py"] 
