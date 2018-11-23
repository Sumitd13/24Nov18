﻿< # 1) Find Event Logs from Log Name : System within Past 12 Hrs #>


Get-EventLog -LogName System -After (Get-Date).AddHours(-12)

######################################################################################################

< # 2) Find all files from temp folder and cound the files.#>

(Get-ChildItem -Path C:\Temp | Measure-Object).Count

####################################################################################################


< # 3) get all files from a C:\windows\system32 only dll files and Unblock all files. #>
Get-ChildItem -Path C:\Windows\System32\*.dll | Unblock-File

######################################################################################################


<# 4) Create 20 files with .log extension and change the extension of the files to .txt using loops or pipeline. #>

$LogFiles = 1..20 | % {New-Item -Path C:\Temp -Name "$_.log" -ItemType file}

foreach ($Log in $LogFiles) {

Get-ChildItem -Path C:\Temp | Rename-Item -NewName { $_.Name -replace ".log",".txt"}

}







