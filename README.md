# POC_PowershellScheduledTask

## Problem solved: 
Creating a scheduled task in powershell to run a python script 

The problem presented is that we have a set of python scripts that we would like to run as part of our daily tasks. We have several that are in need to execution.The
`NewTask.ps1` file will create the scheduled task and will run the `hellotest.py` script (assuming Python is installed in the system). 

To unregister the task, must run the `StopTask.ps1`.

## Additional information
To run a powershell script instead of a python script, must use argument `Powershell.exe` instead of `Python` on line 7 of `NewTask.ps1`. So it should look like: 

  `$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '.\hellotest.py'`
  
## Sources: 

Youtube: PowerShell create a scheduled task
- https://youtu.be/izlIJTmUW0o

Official Documentation from MS
- https://docs.microsoft.com/en-us/powershell/module/scheduledtasks/stop-scheduledtask?view=win10-ps
