## SHOW SONARQUBE METRIC TO GRAFANA
---

 stack:  sonarqube、influxdb、grafana、docker


####  Data flow diagram


#### Install influxdb


#### Install grafana


### Make data collector
dockerfile 
run 


```bash
docker run -d --name export-sonarqube \
-e SONAR_USER=admin \
-e SONAR_PASSWORD=admin \
-e INFLUX_USER=admin \
-e INFLUX_PASSWORD=admin \
-e INFLUX_DB=sonarqube_exporter \
-e INTERVAL=86400 dockerRepo/export-sonarqube-metric:v7
```

#### Add alert in grafana 


```bash
#################################### SMTP / Emailing ##########################
[smtp]
enabled = true
host = smtp.qq.com:465
user = 305xxxxx18@qq.com
# If the password contains # or ; you have to wrap it with trippel quotes. Ex """#password;"""
#qq 邮箱的客户端授权码
password = wrxxxxxxaaaaacdd
;cert_file =
;key_file =
;skip_verify = false
from_address = 305xxxxx18@qq.com
;from_name = Grafana
# EHLO identity in SMTP dialog (defaults to instance_name)
;ehlo_identity = dashboard.example.com
```

```bash
#################################### Alerting ############################
[alerting]
# Disable alerting engine & UI features
;enabled = true
# Makes it possible to turn off alert rule execution but alerting UI is visible
execute_alerts = true
```
