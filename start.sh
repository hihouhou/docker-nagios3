#!/bin/bash

# Start nagios3
/usr/sbin/nagios3 -d /etc/nagios3/nagios.cfg

# Start apache
/usr/sbin/apache2ctl -D FOREGROUND

