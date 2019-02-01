Set-location "D:\Alaiin - Pro\Bureau\TP PowerShell"

Import-Csv "LIVRAISON2.csv"

ForEach ($item in Livraison.csv)

{

$Livreur = $item.Livreur

$Adresse = $item.Adresse

$Commande = $item.Commande

$Date = $item.Date

Write-host $Livreur " " $Adresse " " $Commande " " $Date

}

Export-Csv "Livraison2.csv" -NoTypeInformation