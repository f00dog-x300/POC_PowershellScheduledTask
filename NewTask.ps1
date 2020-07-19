# $action = New-ScheduledTaskAction - Execute 'cmd' -Argument 'C:\Users\steal\Documents\Projects\Powershell\ScheduledTask\NewTask.ps1'
# $trigger = New-ScheduledTaskTrigger -Once -At 9am

# Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Testing Scheduled Task" -Description "Executing initial task"


$action = New-ScheduledTaskAction -Execute 'Python.exe' -Argument 'C:\Users\steal\Documents\Projects\Powershell\ScheduledTask\hellotest.py'

$trigger = New-ScheduledTaskTrigger -Once -At 8:50

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "VideoPS Demo" -Description "Shane was here"
