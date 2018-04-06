# ***************************************************
#
# Script Name: Create VPN User
# Version: 1.0
# Author: Kody Striplin
# Date: April 06, 2018
#
# Description: a small script to create a new AD user
#              in the VPN users OU, quickly enabling
#              a user to connect to the MPrep VPN
#
# ***************************************************
Clear-Host
Set-Alias ds Write-Host
$arrOU= New-Object System.Collections.Generic.List[System.Object]
$firstName = Read-Host "First name"
$lastName = Read-Host "Last name"
$password = Read-Host -AsSecureString "Password"

# select an ou
$ouList = Get-ADOrganizationalUnit -Filter 'Name -like "*"'
for($i =0; $i -lt $ouList.Length; $i++) {
  $arrOU.Add($($ouList[$i]))
}

for($i = 0; $i -lt $arrOU.Count; $i++) {
  $curPost = $arrOU[$i]
  ds "$i $curPost"
}
$ouSelect = Read-Host "Select the user's primary OU."

$dept = $arrOU[$ouSelect]
$displayName = "$firstName $lastName"
$name = "$($firstName).$($lastName)".toLower()
$adminCred = Get-Credential
$dc = Read-Host "Name the domain controller"

New-ADUser -Name $displayName -GivenName $firstName -Surname $LastName -DisplayName $displayName -Credential $adminCred -AccountPassword $password -PasswordNeverExpires $True -SamAccountName $name -Enabled $True -Path "$($dept)" -UserPrincipalName "$($name)@$($dc)"
$newAdUser = Get-ADUser $name
ds
ds
ds
ds "Here is the user's AD info: "
ds $newAdUser
ds "Adding user to VPN Users..."
ds "...."
ds "...."
Add-ADGroupMember -Identity "VPN Users" -Members $newAdUser -Credential $adminCred
#TODO add user to security group
ds
ds
ds "Added $firstName to VPN Users."
ds "Press Enter to continue"
Read-host
Clear-Host
