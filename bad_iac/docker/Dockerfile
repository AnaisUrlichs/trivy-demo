# We shouldn't be using Latest
FROM ubuntu:latest

# Exposing port 22 and using SSHD in a container is an anti-pattern in most cases
EXPOSE 22

# Maintainer is deprecated
MAINTAINER admin <admin@admin.local>

#Apt update and apt install should be on one line to avoid redundant files
RUN apt-get update

#Also not adding -y might cause problems with apt waiting for user input
RUN apt-get install openssh-server

# Not specifying a root user means the container will run as root
USER 10001

CMD ["/bin/bash"]