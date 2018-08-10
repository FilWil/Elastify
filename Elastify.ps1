Clear

#Starting Kibana Server
Set-Location -Path C:\ELK_Stack\Kibana\bin
Start-Process kibana.bat

#Starting Logstash
Set-Location -Path C:\ELK_Stack\Logstash\bin
Start-Process logstash.bat

#Starting Filebeat
Start-Service filebeat

#Starting Metricbeat
Start-Service metricbeat

#Starting Winlog
Start-Service winlogbeat
