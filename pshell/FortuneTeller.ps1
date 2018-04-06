# ***************************************************
#
# Script Name: Fortune Teller
# Version: 1.0
# Author: Kody Striplin
# Date: April 04, 2018
#
# Description: The fortune teller game.
#
#
# ***************************************************

$question = "" # store the game's question
$status = "Play" # store the game's status to control game end
$randomNo = New-Object System.Random # gen erate a random object
$answer = 0 # store a randomly generated number
$time = (Get-Date).Hour # get the current hour of the day

# display the game's opening screen
Set-Alias ds Write-Host

ds
ds
ds
ds
ds
ds "            W E L C O M E   T O   T H E   W I N D O W S"
ds "          P O W E R S H E L L   F O R T U N E   T E L L E R"
ds
ds
ds
ds
ds "                          by Kody Striplin"
ds
ds
ds
ds
ds
ds
ds
ds " Press Enter to continue..."

# pause script execution
Read-Host

# clear the screen
Clear-Host

# print game instructions
ds
ds
ds
ds
ds
ds " The fortune teller is a very busy and impatient mystic. Make"
ds " your questions brief and simple and only expect to receive"
ds " Yes / No styled answers."
ds
ds
ds
ds
ds
ds
ds
ds
ds
ds
ds
ds " Press Enter to continue..."

# pause script execution
Read-Host

# game logic

while ($status -ne "Stop") {

  while ($question -eq "") {
    Clear-Host
    ds
    $question = read-host "What is your question?"
  }
  $question = ""

  $answer = $randomNo.Next(1,5) # generate a random number between 1 and 4
  if ($time -gt 12) {
    ds
    if ($answer -eq 1) { "Grrrr. No!"}
    if ($answer -eq 2) { "Grrrr. Absolutely not!"}
    if ($answer -eq 3) { "Grrrr. Never!"}
    if ($answer -eq 4) { "Grrrr. Fine. Yes."}
  } Else {
    ds
    elseif ($answer -eq 1) {ds "Yes."}
    elseif ($answer -eq 2) {ds "Most certianly, yes."}
    elseif ($answer -eq 3) {ds "Uncertain."}
    elseif ($answer -eq 4) {ds "No, sorry."}
  }
  ds
  ds
  ds
  ds
  ds
  ds
  ds
  ds
  ds
  ds
  ds
  ds " Press Enter to continue...."
  Read-Host

  Clear-host
  ds
  $reply = Read-Host "Press Enter to play again or Q to quit"
  if ($reply -eq "Q") {$status = "Stop"}
  Clear-Host
}
