#!/bin/bash

# Configure NewRelic if appropriate
if [ -e '/newrelic.license' ] && [ -s '/newrelic.license' ]; then
  cp /newrelic.license /etc/php5/fpm/conf.d/20-newrelic.ini
  if [ "x$NEWRELIC_APPNAME" != "x" ]; then
    echo "newrelic.appname=\"$NEWRELIC_APPNAME\"" >> /etc/php5/fpm/conf.d/20-newrelic.ini
  fi
fi

# start all the services
/usr/local/bin/supervisord -n
