#!/bin/bash
#
# Run application for development
#

cd /opt/frontend

if [[ ! -d node_modules ]] ; then
  npm install
fi

npm start
