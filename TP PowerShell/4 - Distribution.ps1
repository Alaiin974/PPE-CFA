Set-location "D:\Alaiin - Pro\Bureau\TP PowerShell"

$CSV = Import-Csv "LIVRAISON.csv"
$path1 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Dormeuil\Dormeuil.csv"
$path2 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Perrin\Perrin.csv"
$path3 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Hubert\Hubert.csv"

#Parcourir chaque item du fichier .csv
ForEach ($item in $CSV)

{
$Livreur = $item.Livreur

$Adresse = $item.Adresse

$Commande = $item.Commande

$Date = $item.Date

$MyLine =  $Livreur + "," + $Adresse + "," + $Commande + "," + $Date

#Si le livreur est "Dormeuil", ajouter le contenu associé dans Dormeuil.csv
If($Livreur -eq "Dormeuil") {
add-content $path1 $MyLine
}

#Si le livreur est "Perrin", ajouter le contenu associé dans Perrin.csv
If ($Livreur -eq "Perrin") {
add-content $path2 $MyLine
}

#Si le livreur est "Hubert", ajouter le contenu associé dans Hubert.csv
If ($Livreur -eq "Hubert") {	
add-content $path3 $MyLine
}

}

#$path = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON3.csv"

#{
#    New-Item -ItemType Directory -Force -Path $path
#}

#Write-host $Livreur " " $Adresse " " $Commande " " $Date