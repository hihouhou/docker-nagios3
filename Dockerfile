#################################################
# Debian with added nagios3 Server.
# Basic Nagios3 without plugins.
#################################################

# Using latest debian image as base
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >


# install dependancies
RUN apt-get update && apt-get install -y nagios3

#configure nagios3.conf
COPY nagios3.conf /etc/apache2/conf.d/

#configure nagios.cfg
COPY nagios.cfg /etc/nagios3/


# startup
CMD nagios3 -d

EXPOSE 8080/tcp
