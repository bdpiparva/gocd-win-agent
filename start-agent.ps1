# Changing temp dir to avoid long file name
New-Item "C:\tmp" -ItemType Directory
$env:TEMP = "c:\tmp"
$env:TMP = "c:\tmp"

C:\\go-agent.exe
