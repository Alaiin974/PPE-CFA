Set-location "D:\Alaiin - Pro\Bureau\TP PowerShell"

$A = Import-Csv "LIVRAISON2.csv"

ForEach ($item in $A)

{

$Nom = $item.Nom

$Prenom = $item.Prenom

$path = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\" + $item.Nom

If(!(test-path $path))
{
    New-Item -ItemType Directory -Force -Path $path
}

}