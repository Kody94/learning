Set-Alias ds Write-Host
$arrOU= New-Object System.Collections.Generic.List[System.Object]
$ouList = Get-ADOrganizationalUnit -Filter 'Name -like "*"'
for($i =0; $i -lt $ouList.Length; $i++) {
  $arrOU.Add($($ouList[$i]))
}

for($i = 0; $i -lt $arrOU.Count; $i++) {
  $curPost = $arrOU[$i]
  ds "$i $curPost"
}
$ouSelect = Read-Host "Select an OU"
#TODO add exception for if you select an option not on the list

ds
ds
ds
ds
ds
ds
ds
ds
ds "You selected"
ds $arrOU[$ouSelect]
ds
ds
ds
ds
ds
ds
ds "Press Enter to end the program."
Read-Host
Clear-Host
