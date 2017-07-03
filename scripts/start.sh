#!/bin/bash

# Configure NewRelic if appropriate
if [ -e '/newrelic.license' ] && [ -s '/newrelic.license' ]; then
  cp /newrelic.license /etc/php5/fpm/conf.d/20-newrelic.ini
  if [ "x$NEWRELIC_APPNAME" != "x" ]; then
    echo "newrelic.appname=\"$NEWRELIC_APPNAME\"" >> /etc/php5/fpm/conf.d/20-newrelic.ini
  fi
fi

# Update all plugins and themes if WP is present
su -c "/usr/local/bin/wp plugin update --all --path='/usr/share/nginx/www'" www-data
su -c "/usr/local/bin/wp theme update --all --path='/usr/share/nginx/www'" www-data

# start all the services
/usr/local/bin/supervisord -n
