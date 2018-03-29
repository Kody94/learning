$csvname = Get-Date -UFormat "%Y%m%d"
gam print groups > groups.csv
$groups = Get-Content groups.csv | Where{$_ -match "manhattanprep"}

$groups | ForEach {gam print group-members group $_}
