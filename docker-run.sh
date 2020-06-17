#!/bin/bash
#
# Run Docker container for developement. Run this script from host system.
#

sudo docker run -i \
                -t \
                --rm \
                -p 80:3000 \
                -u $(id -u $USER):$(id -u $USER) \
                --group-add 10005 \
                -v ${PWD}:/opt/frontend:z \
                -w /opt/frontend \
                <image> \
                /bin/bash --rcfile '/opt/frontend/scripts/docker-start.sh'
