#.ps1
$path = "C:\Users\Administrator\Desktop\emails\*"
$string_pattern = "https://"
$command = Get-ChildItem -Path $path -Recurse | Select-String -Pattern $String_patternecho $command