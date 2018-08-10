#References
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#Creating main window form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Elastify"
$Form.Size = New-Object System.Drawing.Size(850,270)
$Form.StartPosition = "CenterScreen"

#KibanaButton
$KibanaButton = New-Object System.Windows.Forms.Button
$KibanaButton.Location = New-Object System.Drawing.Size(20, 20)
$KibanaButton.Size = New-Object System.Drawing.Size(75,30)
$KibanaButton.Text = "Kibana"
$KibanaButton.Add_Click($kibana_context_click)
$Form.Controls.Add($KibanaButton)

#LogstashButton
$LogstashButton = New-Object System.Windows.Forms.Button
$LogstashButton.Location = New-Object System.Drawing.Size(20, 60)
$LogstashButton.Size = New-Object System.Drawing.Size(75,30)
$LogstashButton.Text = "Logstash"
$LogstashButton.Add_Click($logstash_context_click)
$Form.Controls.Add($LogstashButton)

#FilebeatButton
$FilebeatButton = New-Object System.Windows.Forms.Button
$FilebeatButton.Location = New-Object System.Drawing.Size(20, 100)
$FilebeatButton.Size = New-Object System.Drawing.Size(75,30)
$FilebeatButton.Text = "Filebeat"
$FilebeatButton.Add_Click($filebeat_context_click)
$Form.Controls.Add($FilebeatButton)

#MetricButton
$MetricButton = New-Object System.Windows.Forms.Button
$MetricButton.Location = New-Object System.Drawing.Size(20, 140)
$MetricButton.Size = New-Object System.Drawing.Size(75,30)
$MetricButton.Text = "Metricbeat"
$MetricButton.Add_Click($metricbeat_context_click)
$Form.Controls.Add($MetricButton)

#HeartbeatButton
$HeartbeatButton = New-Object System.Windows.Forms.Button
$HeartbeatButton.Location = New-Object System.Drawing.Size(20, 180)
$HeartbeatButton.Size = New-Object System.Drawing.Size(75,30)
$HeartbeatButton.Text = "Heartbeat"
$HeartbeatButton.Add_Click($heartbeat_context_click)
$Form.Controls.Add($HeartbeatButton)

#Show form
$Form.Topmost = $True
$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog()

# #Starting Kibana Server
# Set-Location -Path C:\ELK_Stack\Kibana\bin
# Start-Process kibana.bat

# #Starting Logstash
# Set-Location -Path C:\ELK_Stack\Logstash\bin
# Start-Process logstash.bat

# #Starting Filebeat
# Start-Service filebeat

# #Starting Metricbeat
# Start-Service metricbeat

# #Starting Winlog
# Start-Service winlogbeat

