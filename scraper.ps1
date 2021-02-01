Write-Output "Hello Get Request!"

$InputWebsite = Read-Host "Please enter the website"

$InputWebsite = "https://" + $InputWebsite

$Result = Invoke-WebRequest -UseBasicParsing -Uri $InputWebsite -Method Get

Write-Output "Result: " $Result
