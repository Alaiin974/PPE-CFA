#Set-Location "D:\Alaiin - Pro\Bureau\TP PowerShell\"

#Début du log
Start-Transcript -Path "D:\Alaiin - Pro\Bureau\TP PowerShell\log-2.txt" -NoClobber

#Initialiser la date du jour
$date = (Get-Date).ToString("dd-MM-yyyy")

#Se placer dans le dossier SAUVEGARDES
Set-Location "D:\Alaiin - Pro\Bureau\TP PowerShell\SAUVEGARDES\"

#Créer un dossier avec la date du jour
New-Item -Name "$date" -ItemType directory 

#Copier le fichier LIVRAISON.csv dans le dossier $date
Copy-Item "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON.csv" -Destination "D:\Alaiin - Pro\Bureau\TP PowerShell\SAUVEGARDES\$date"

#Fin du log
Stop-Transcript