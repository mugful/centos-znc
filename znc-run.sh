#!/bin/bash

chown -R znc:znc /var/lib/znc
exec su -s /bin/bash - znc -c 'znc -f'
