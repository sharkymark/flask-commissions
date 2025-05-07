#!/bin/sh
echo "Starting Flask on port 5000" >> flask.lognohup 
nohup flask run > flask.log