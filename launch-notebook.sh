#!/bin/sh
# USAGE: bash launch-notebook.sh (in the container)

jupyter-notebook --ip=`ip route | awk 'NR==2 {print $9}'`
