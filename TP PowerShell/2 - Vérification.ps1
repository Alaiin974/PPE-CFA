#Initialiser la date du jour
$date = (Get-Date).ToString("dd-MM-yyyy")

#Créer un dossier log avec la date du jour
New-Item -Name "log_$date" -ItemType directory 

#Si le fichier LIVRAISON.csv existe, créer un fichier log "Présent"
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $True) {
Start-Transcript -Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log_$date\logpresent.txt" -NoClobber
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $True) {Write-Host "Present"}
Stop-Transcript
}

#Si le fichier LIVRAISON.csv n'existe pas, créer un fichier log "Asbent"
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $False) {
Start-Transcript -Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log_$date\logabsent.txt" -NoClobber
If ((Test-Path "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv") -eq $False) {Write-Host "Absent"}
Stop-Transcript
}

#Start-Transcript & Stop-Transcript = Début & Fin de log