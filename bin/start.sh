#!/bin/bash
# (C) Campbell Software Solutions 2015
set -e

# Automate installation
php /data/bin/install.php
echo Applying configuration file security
chmod 644 /data/upload/include/ost-config.php
echo No MySQL linked container detected, manual configuration \& installation will be required.

#Launch supervisor to manage processes
exec /usr/bin/supervisord -c /data/supervisord.conf
