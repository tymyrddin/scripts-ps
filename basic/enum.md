# Cheatsheet enumeration

To list all users inside the machine:

    Get-LocalUser

To get the user SID, add -SID flag on `Get-LocalUser`. Example:

    Get-LocalUser -SID "S-1-5-21-1394777289-3961777894-1791813945-501"

For counting users with password required values set to False?

    Get-LocalUser | Where-Object -Property PasswordRequired -Match false

Number of the local groups:

    Get-LocalGroup | measure

Get IP address info:

    Get-NetIPAddress

Number of listening ports:

    Get-NetTCPconnection -State Listen | measure

Remote address for a local port, for example port `445`:

    Get-NetTCPconnection -State Listen -LocalPort 445

Number of installed patches:

    Get hot-fix | measure

When a patch was installed, for example `KB4023834`:

    Get-HoxFix -ID KB4023834

To find the contents of a backup file (this one was a `.bak.txt` file:

    Get-ChildItem -Path C:\ -Include *.bak* -File -Recurse -ErrorAction SilentlyContinue

    Get-Content "C:\Program Files (x86)\Internet Explorer\passwords.bak.txt"

All files containing API_KEY:

    Get-ChildItem C:\* -Recurse | Select-String -pattern API_KEY

To list all the running processes:

    Get-Process

Path of a scheduled task, for example `new-sched-task`:

    Get-ScheduleTask -TaskName new-sched-task

owner of the `C:\` :

    Get-Acl c:/
