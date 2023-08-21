# Simple webapp

This is a very basic Python webapp for use as an example in DevOps deployment specifications.

## Usage

Run the app server as follows:

    python3 server.py

The website should appear on port 8080 on the machine you're running it on. If running locally, view at http://localhost:8080/.

To detach it from the shell and keep it running even if you close your terminal session:

    nohup python3 server.py &

## Installation on server/instance running RHEL/CentOS 7/8 or Amazon Linux 2

1. Place files in directory _/opt/simple\_webapp_ which should be owned by `ec2-user:ec2-user`.
1. Copy _/opt/simple\_webapp/simple-webapp.service_ to _/usr/lib/systemd/system/simple-webapp.service_ and set ownership to `root:root` (you may need to reload systemd with `systemctl daemon-reload`).
1. Enable and start service: `systemctl enable simple-webapp ; systemctl start simple-webapp`.
1. Website should appear on port 8080.
1. Logs to _/var/log/messages_ via rsyslog (this can be changed by editing your rsyslog configuration).

## Build and run as Docker container

Build:

    docker build -t simple_webapp .
    
Run:

    docker run -d -p 8080:8080/tcp --name simple_webapp simple_webapp
