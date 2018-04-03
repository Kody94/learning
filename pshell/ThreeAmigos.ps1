# ***************************************************
#
# Script Name: ThreeAmigos.ps1
# Version: 1.0
# Author: Kody
# Date: 2018 Apr 03
#
# Description: A mad-lib style Powershell game
#
#
# ***************************************************

# Clear the terminal
Clear-Host

# Define the story variables
$animal = ""
$vehicle = ""
$store = ""
$dessert = ""

# Display the game's opening screen
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "              T H E    S T O R Y"
Write-Host
Write-Host
Write-Host
Write-Host "      O F    T H E    T H R E E    A M I G O S"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "                BY KODY STRIPLIN"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host

# Pause until the player presses enter
Read-Host

# Clear the terminal again
Clear-Host

# Provide instructions
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " This is an interactive story."
Write-Host
Write-Host
Write-Host
Write-Host " Before I continue, you will need to"
Write-Host
Write-Host " answer a few questions."
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "press enter"

# Ask the player the first question
while ($animal -eq "") {

  Clear-Host

  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host

  $animal = Read-Host "Enter the name of a scary animal"

}

# Ask the player the first question
while ($vehicle -eq "") {

  Clear-Host

  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host

  $vehicle = Read-Host "Enter the name of vehicle."

}

# Ask the player the first question
while ($store -eq "") {

  Clear-Host

  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host

  $store = Read-Host "Enter the name of your favorite store."

}

# Ask the player the first question
while ($dessert -eq "") {

  Clear-Host

  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host

  $dessert = Read-Host "Enter the name of your favorite dessert."

}

Clear-Host

# tell the story
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Once upon a time there were three very special children"
Write-Host " named Alexander, William, and Molly. Alexander was the oldest"
Write-Host " and was known to be brave and strong. Molly, the youngest,"
Write-Host " was just five years old, yet she possessed and extraordinary"
Write-Host " sense of awareness that even the wisest sage would"
Write-Host " admire and respect. William, the middle child, was both brave"
Write-Host " and wise many times beyond his years. They lived together at"
Write-Host " the top of a hill, just outside the outskirts of town, where"
Write-Host " they faithfully watched over the townsfolk. Always together"
Write-Host " and always looking out for each other and the people in the"
Write-Host " town, they were known by everyone as the Three Amigos."
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "press enter"

# Pause until the player presses enter
Read-Host
Clear-Host

# tell the story
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " One day, which started out no different than any other day, a"
Write-Host " great roar was heard from the center of the town. Women and"
Write-Host " small children could be seen "
Write-Host " ..."
Write-Host " ..."
Write-Host " I'm not typing this all out."
Write-Host " Here are the variables:"
Write-Host " $animal"
Write-Host " $vehicle"
Write-Host " $store"
Write-Host " $dessert"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " the end."
Write-Host
Write-Host "press enter"

# Pause until the player presses enter
Read-Host
Clear-Host
