#!/bin/bash
cd /home/dev/
chown -R dev.dev /home/dev/jitsi-meet
cd jitsi-meet
find . -type d -exec chmod 0755 {} \;
find . -type f -exec chmod 0644 {} \;