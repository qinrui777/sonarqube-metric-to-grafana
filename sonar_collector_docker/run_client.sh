#!/bin/bash

echo "begin ...."

SONAR_USER=admin SONAR_PASSWORD=admin INFLUX_USER=admin INFLUX_PASSWORD=admin INFLUX_DB=sonarqube_exporter python sonar-client.py

echo "end!!!"
