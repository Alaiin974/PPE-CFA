$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
New-Item -Name "log_$date" -ItemType directory 

If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $True) {
Start-Transcript -Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log_$date\logpresent.txt" -NoClobber
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $True) {Write-Host "Present"}
Stop-Transcript
}

If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $False) {
Start-Transcript -Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log_$date\logabsent.txt" -NoClobber
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $False) {Write-Host "Absent"}
Stop-Transcript
}