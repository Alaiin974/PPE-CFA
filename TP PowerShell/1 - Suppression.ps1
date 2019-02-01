#Initialiser les paths
$path1 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Dormeuil\Dormeuil.csv"
$path2 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Perrin\Perrin.csv"
$path3 = "D:\Alaiin - Pro\Bureau\TP PowerShell\LIVRAISON\Hubert\Hubert.csv"

#Si $path existe, alors supprimer $path
If ((Test-Path $path1) -eq $True) {
    Remove-Item $path1
}

If ((Test-Path $path2) -eq $True) {
    Remove-Item $path2
}

If ((Test-Path $path3) -eq $True) {
    Remove-Item $path3
}