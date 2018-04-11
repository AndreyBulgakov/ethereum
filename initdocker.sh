#!/bin/sh
service docker start
groupadd docker
gpasswd -a $USER docker
usermod -aG docker $USER