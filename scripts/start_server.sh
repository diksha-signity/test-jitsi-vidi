#!/bin/bash
output=$(ps aux | grep node | grep -wo 'webpack-dev-server')
JarName="webpack-dev-server"
if [[ "$output" == "$JarName" ]]; then
 kill -9 $(ps aux | grep node | grep 'webpack-dev-server' | awk '{print$2}')
fi
cd /home/dev/jitsi-meet/
nohup make dev >/dev/null 2>&1 &
exit 0
