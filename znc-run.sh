#!/bin/bash

chown -R znc:znc /var/lib/znc
su -s /bin/bash - znc -c 'znc -f'
