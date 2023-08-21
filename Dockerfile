FROM python:3
WORKDIR /opt/simple-webapp
COPY server.py *.html ./
CMD [ "python", "server.py" ]
