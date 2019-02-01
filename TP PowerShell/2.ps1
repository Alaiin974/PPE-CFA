$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")

If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log_$date\logpresent.txt") -eq $True)

{

Set-Location "D:\Alaiin - Pro\Bureau\TP PowerShell\SAUVEGARDES\"
New-Item -Name "$date" -ItemType directory 

Copy-Item "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv" -Destination "D:\Alaiin - Pro\Bureau\TP PowerShell\SAUVEGARDES\$date"
}