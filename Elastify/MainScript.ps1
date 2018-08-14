<<<<<<< HEAD
﻿# #Force Elevation
# param([switch]$Elevated)
# function Check-Admin {
# $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
# $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
# }
# if ((Check-Admin) -eq $false)  {
# if ($elevated)
# {
#     # could not elevate, quit
# }
 
# else {
 
# Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
# }
# exit
# }
=======
#Force Elevation
param([switch]$Elevated)
function Check-Admin {
$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
if ((Check-Admin) -eq $false)  {
if ($elevated)
{
# could not elevate, quit
}
 
else {
 
Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
}
exit
}
>>>>>>> fe0607781430862fd56dff28a86cda92c3b2c43c

#References
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

#Creating main window form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Elastify"
$Form.Size = New-Object System.Drawing.Size(600,270)
$Form.MaximizeBox = $false
$Form.FormBorderStyle = "FixedDialog"
$Form.StartPosition = "CenterScreen"

#region Labels
#KibanaLabel
$KibanaLabel = New-Object System.Windows.Forms.Label
$KibanaLabel.Location = New-Object System.Drawing.Size(20, 27.5)
$KibanaLabel.Size = New-Object System.Drawing.Size(75,30)
$KibanaLabel.Text = "Kibana"
$Form.Controls.Add($KibanaLabel)

#LogstashLabel
$LogstashLabel = New-Object System.Windows.Forms.Label
$LogstashLabel.Location = New-Object System.Drawing.Size(20, 67.5)
$LogstashLabel.Size = New-Object System.Drawing.Size(75,30)
$LogstashLabel.Text = "Logstash"
$Form.Controls.Add($LogstashLabel)

#FilebeatLabel
$FilebeatLabel = New-Object System.Windows.Forms.Label
$FilebeatLabel.Location = New-Object System.Drawing.Size(20, 107.5)
$FilebeatLabel.Size = New-Object System.Drawing.Size(75,30)
$FilebeatLabel.Text = "Filebeat"
$Form.Controls.Add($FilebeatLabel)

#MetricLabel
$MetricLabel = New-Object System.Windows.Forms.Label
$MetricLabel.Location = New-Object System.Drawing.Size(20, 147.5)
$MetricLabel.Size = New-Object System.Drawing.Size(85,30)
$MetricLabel.Text = "Metricbeat"
$Form.Controls.Add($MetricLabel)

#HeartbeatLabel
$HeartbeatLabel = New-Object System.Windows.Forms.Label
$HeartbeatLabel.Location = New-Object System.Drawing.Size(20, 187.5)
$HeartbeatLabel.Size = New-Object System.Drawing.Size(85,30)
$HeartbeatLabel.Text = "Heartbeat"
$Form.Controls.Add($HeartbeatLabel) 
#endregion Labels

#region Buttons

$KibanaUninstallButton = New-Object System.Windows.Forms.Button
$KibanaUninstallButton.Location = New-Object System.Drawing.Size(205, 20)
$KibanaUninstallButton.Size = New-Object System.Drawing.Size(85,30)
$KibanaUninstallButton.Text = "Uninstall"
$KibanaUninstallButton.Add_Click($kibana_uninstall_click)
$Form.Controls.Add($KibanaUninstallButton)

$LogstashUninstallButton = New-Object System.Windows.Forms.Button
$LogstashUninstallButton.Location = New-Object System.Drawing.Size(205, 60)
$LogstashUninstallButton.Size = New-Object System.Drawing.Size(85,30)
$LogstashUninstallButton.Text = "Uninstall"
$LogstashUninstallButton.Add_Click($logstash_uninstall_click)
$Form.Controls.Add($LogstashUninstallButton)

$FilebeatUninstallButton = New-Object System.Windows.Forms.Button
$FilebeatUninstallButton.Location = New-Object System.Drawing.Size(205, 100)
$FilebeatUninstallButton.Size = New-Object System.Drawing.Size(85,30)
$FilebeatUninstallButton.Text = "Uninstall"
$FilebeatUninstallButton.Add_Click($filebeat_uninstall_click)
$Form.Controls.Add($FilebeatUninstallButton)

$MetricbeatUninstallButton = New-Object System.Windows.Forms.Button
$MetricbeatUninstallButton.Location = New-Object System.Drawing.Size(205, 140)
$MetricbeatUninstallButton.Size = New-Object System.Drawing.Size(85,30)
$MetricbeatUninstallButton.Text = "Uninstall"
$MetricbeatUninstallButton.Add_Click($metricbeat_uninstall_click)
$Form.Controls.Add($MetricbeatUninstallButton)

$HeartbreatUninstallButton = New-Object System.Windows.Forms.Button
$HeartbreatUninstallButton.Location = New-Object System.Drawing.Size(205, 180)
$HeartbreatUninstallButton.Size = New-Object System.Drawing.Size(85,30)
$HeartbreatUninstallButton.Text = "Uninstall"
$HeartbreatUninstallButton.Add_Click($heartbeat_uninstall_click)
$Form.Controls.Add($HeartbreatUninstallButton)

$KibanaInstallButton = New-Object System.Windows.Forms.Button
$KibanaInstallButton.Location = New-Object System.Drawing.Size(115, 20)
$KibanaInstallButton.Size = New-Object System.Drawing.Size(75,30)
$KibanaInstallButton.Text = "Install"
$KibanaInstallButton.Add_Click($kibana_install_click)
$Form.Controls.Add($KibanaInstallButton)

$LogstashInstallButton = New-Object System.Windows.Forms.Button
$LogstashInstallButton.Location = New-Object System.Drawing.Size(115, 60)
$LogstashInstallButton.Size = New-Object System.Drawing.Size(75,30)
$LogstashInstallButton.Text = "Install"
$LogstashInstallButton.Add_Click($logstash_install_click)
$Form.Controls.Add($LogstashInstallButton)

$FilebeatInstallButton = New-Object System.Windows.Forms.Button
$FilebeatInstallButton.Location = New-Object System.Drawing.Size(115, 100)
$FilebeatInstallButton.Size = New-Object System.Drawing.Size(75,30)
$FilebeatInstallButton.Text = "Install"
$FilebeatInstallButton.Add_Click($filebeat_install_click)
$Form.Controls.Add($FilebeatInstallButton)

$MetricbeatInstallButton = New-Object System.Windows.Forms.Button
$MetricbeatInstallButton.Location = New-Object System.Drawing.Size(115, 140)
$MetricbeatInstallButton.Size = New-Object System.Drawing.Size(75,30)
$MetricbeatInstallButton.Text = "Install"
$MetricbeatInstallButton.Add_Click($metricbeat_install_click)
$Form.Controls.Add($MetricbeatInstallButton)

$HeartbeatInstallButton = New-Object System.Windows.Forms.Button
$HeartbeatInstallButton.Location = New-Object System.Drawing.Size(115, 180)
$HeartbeatInstallButton.Size = New-Object System.Drawing.Size(75,30)
$HeartbeatInstallButton.Text = "Install"
$HeartbeatInstallButton.Add_Click($heartbeat_install_click)
$Form.Controls.Add($HeartbeatInstallButton)

$KibanaStartButton = New-Object System.Windows.Forms.Button
$KibanaStartButton.Location = New-Object System.Drawing.Size(305, 20)
$KibanaStartButton.Size = New-Object System.Drawing.Size(85,30)
$KibanaStartButton.Text = "Start"
$KibanaStartButton.Add_Click($kibana_start_click)
$Form.Controls.Add($KibanaStartButton)

$LogstashStartButton = New-Object System.Windows.Forms.Button
$LogstashStartButton.Location = New-Object System.Drawing.Size(305, 60)
$LogstashStartButton.Size = New-Object System.Drawing.Size(85,30)
$LogstashStartButton.Text = "Start"
$LogstashStartButton.Add_Click($logstash_start_click)
$Form.Controls.Add($LogstashStartButton)

$FilebeatStartButton = New-Object System.Windows.Forms.Button
$FilebeatStartButton.Location = New-Object System.Drawing.Size(305, 100)
$FilebeatStartButton.Size = New-Object System.Drawing.Size(85,30)
$FilebeatStartButton.Text = "Start"
$FilebeatStartButton.Add_Click($filebeat_start_click)
$Form.Controls.Add($FilebeatStartButton)

$MetricbeatStartButton = New-Object System.Windows.Forms.Button
$MetricbeatStartButton.Location = New-Object System.Drawing.Size(305, 140)
$MetricbeatStartButton.Size = New-Object System.Drawing.Size(85,30)
$MetricbeatStartButton.Text = "Start"
$MetricbeatStartButton.Add_Click($metricbeat_start_click)
$Form.Controls.Add($MetricbeatStartButton)

$HeartbeatStartButton = New-Object System.Windows.Forms.Button
$HeartbeatStartButton.Location = New-Object System.Drawing.Size(305, 180)
$HeartbeatStartButton.Size = New-Object System.Drawing.Size(85,30)
$HeartbeatStartButton.Text = "Start"
$HeartbeatStartButton.Add_Click($heartbeat_start_click)
$Form.Controls.Add($HeartbeatStartButton)

$KibanaStopButton = New-Object System.Windows.Forms.Button
$KibanaStopButton.Location = New-Object System.Drawing.Size(395, 20) # tutaj do dokonczenia
$KibanaStopButton.Size = New-Object System.Drawing.Size(75,30)
$KibanaStopButton.Text = "Stop"
$KibanaStopButton.Add_Click($kibana_stop_click)
$Form.Controls.Add($KibanaStopButton)

$LogstashStopButton = New-Object System.Windows.Forms.Button
$LogstashStopButton.Location = New-Object System.Drawing.Size(395, 60)
$LogstashStopButton.Size = New-Object System.Drawing.Size(75,30)
$LogstashStopButton.Text = "Stop"
$LogstashStopButton.Add_Click($logstash_stop_click)
$Form.Controls.Add($LogstashStopButton)

$FilebeatStopButton = New-Object System.Windows.Forms.Button
$FilebeatStopButton.Location = New-Object System.Drawing.Size(395, 100)
$FilebeatStopButton.Size = New-Object System.Drawing.Size(75,30)
$FilebeatStopButton.Text = "Stop"
$FilebeatStopButton.Add_Click($filebeat_stop_click)
$Form.Controls.Add($FilebeatStopButton)

$MetricbeatStopButton = New-Object System.Windows.Forms.Button
$MetricbeatStopButton.Location = New-Object System.Drawing.Size(395, 140)
$MetricbeatStopButton.Size = New-Object System.Drawing.Size(75,30)
$MetricbeatStopButton.Text = "Stop"
$MetricbeatStopButton.Add_Click($metricbeat_stop_click)
$Form.Controls.Add($MetricbeatStopButton)

$HeartbeatStopButton = New-Object System.Windows.Forms.Button
$HeartbeatStopButton.Location = New-Object System.Drawing.Size(395, 180)
$HeartbeatStopButton.Size = New-Object System.Drawing.Size(75,30)
$HeartbeatStopButton.Text = "Stop"
$HeartbeatStopButton.Add_Click($heartbeat_stop_click)
$Form.Controls.Add($HeartbeatStopButton)

$KibanaRestartButton = New-Object System.Windows.Forms.Button
$KibanaRestartButton.Location = New-Object System.Drawing.Size(485, 20)
$KibanaRestartButton.Size = New-Object System.Drawing.Size(75,30)
$KibanaRestartButton.Text = "Restart"
$KibanaRestartButton.Add_Click($kibana_restart_click)
$Form.Controls.Add($KibanaRestartButton)

$LogstashRestartButton = New-Object System.Windows.Forms.Button
$LogstashRestartButton.Location = New-Object System.Drawing.Size(485, 60)
$LogstashRestartButton.Size = New-Object System.Drawing.Size(75,30)
$LogstashRestartButton.Text = "Restart"
$LogstashRestartButton.Add_Click($logstash_restart_click)
$Form.Controls.Add($LogstashRestartButton)

$FilebeatRestartButton = New-Object System.Windows.Forms.Button
$FilebeatRestartButton.Location = New-Object System.Drawing.Size(485, 100)
$FilebeatRestartButton.Size = New-Object System.Drawing.Size(75,30)
$FilebeatRestartButton.Text = "Restart"
$FilebeatRestartButton.Add_Click($filebeat_restart_click)
$Form.Controls.Add($FilebeatRestartButton)

$MetricbeatRestartButton = New-Object System.Windows.Forms.Button
$MetricbeatRestartButton.Location = New-Object System.Drawing.Size(485, 140)
$MetricbeatRestartButton.Size = New-Object System.Drawing.Size(75,30)
$MetricbeatRestartButton.Text = "Restart"
$MetricbeatRestartButton.Add_Click($metricbeat_restart_click)
$Form.Controls.Add($MetricbeatRestartButton)

$HeartbeatRestartButton = New-Object System.Windows.Forms.Button
$HeartbeatRestartButton.Location = New-Object System.Drawing.Size(485, 180)
$HeartbeatRestartButton.Size = New-Object System.Drawing.Size(75,30)
$HeartbeatRestartButton.Text = "Restart"
$HeartbeatRestartButton.Add_Click($heartbeat_restart_click)
$Form.Controls.Add($HeartbeatRestartButton)
#endregion Buttons

function metricbeat_install_click {
    $MetricbeatInstallButton.Text = "Choose file path"
    $inputfile = Get-FileName "C:\temp"
    $inputdata = get-content $inputfile
}

$metricbeat_install_click = ${function:metricbeat_install_click}

function kibana_install_click {
    $KibanaInstallButton.Text = "Choose file path"
    $inputfile = Get-FolderName "C:\temp"
    $inputdata = get-content $inputfile
}

$kibana_install_click = ${function:kibana_install_click}

Function Get-FileName($initialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "EXE (*.exe)| *.exe | PS1 (*.ps1)| *.ps1"
    $OpenFileDialog.ShowDialog() | Out-Null
}

Function Get-FolderName($initialDirectory){
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

    $OpenFileDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $OpenFileDialog.SelectedPath = $initialDirectory
    $OpenFileDialog.ShowDialog() | Out-Null
}

function kibana_start_click {
    Start-Service kibana
    $KibanaStartButton.Text = "Running"  
}

$kibana_start_click = ${function:kibana_start_click}

function kibana_stop_click {
    Stop-Service kibana #nie ma go w serwisach więc nei ma go jak zabić
    $KibanaStartButton.Text = "Start"  
}

$kibana_stop_click = ${function:kibana_stop_click}

function kibana_restart_click {
    Restart-Service kibana #nie ma go w serwisach więc nei ma go jak zrestartować
}

$kibana_restart_click = ${function:kibana_restart_click}

function logstash_start_click {
    Start-Service logstash
    $logstashStartButton.Text = "Running"  
}

$logstash_start_click = ${function:logstash_start_click}

function logstash_stop_click {
    Stop-Service logstash 
    $logstashStartButton.Text = "Start"  
}

$logstash_stop_click = ${function:logstash_stop_click}

function logstash_restart_click {
    Restart-Service logstash 
}

$logstash_restart_click = ${function:logstash_restart_click}

function filebeat_start_click {
    Start-Service filebeat
    $filebeatStartButton.Text = "Running"  
}

$filebeat_start_click = ${function:filebeat_start_click}

function filebeat_stop_click {
    Stop-Service filebeat 
    $filebeatStartButton.Text = "Start"  
}

$filebeat_stop_click = ${function:filebeat_stop_click}

function filebeat_restart_click {
    Restart-Service filebeat 
}
$filebeat_restart_click = ${function:filebeat_restart_click}

function metricbeat_start_click {
    Start-Service metricbeat
    $metricbeatStartButton.Text = "Running"  
}

$metricbeat_start_click = ${function:metricbeat_start_click}

function metricbeat_stop_click {
    Stop-Service metricbeat 
    $metricbeatStartButton.Text = "Start"  
}

$metricbeat_stop_click = ${function:metricbeat_stop_click}

function metricbeat_restart_click {
    Restart-Service metricbeat 
}
$metricbeat_restart_click = ${function:metricbeat_restart_click}

function heartbeat_start_click {
    Start-Service heartbeat
    $heartbeatStartButton.Text = "Running"  
}

$heartbeat_start_click = ${function:heartbeat_start_click}

function heartbeat_stop_click {
    Stop-Service heartbeat 
    $heartbeatStartButton.Text = "Start"  
}

$heartbeat_stop_click = ${function:heartbeat_stop_click}

function heartbeat_restart_click {
    Restart-Service heartbeat 
}
$heartbeat_restart_click = ${function:heartbeat_restart_click}

#Show form
$Form.Topmost = $True
$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog()
#$HeartbeatButton.Visible = $false
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

