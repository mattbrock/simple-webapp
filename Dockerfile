FROM python:3
WORKDIR /opt/simple_webapp
COPY server.py *.html ./
CMD [ "python", "server.py" ]
