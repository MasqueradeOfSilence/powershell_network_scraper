Write-Output "Hello network scraper!"

$Adapters = Get-NetAdapter -Name *

Write-Output "Network Adapters: " $Adapters

$IPAddresses = $(ipconfig /all | Where-Object {$_ -match '(IPv4).*' } | out-null; $Matches[0])

Write-Output "`nIP Addresses: " $IPAddresses

$Subnets = $(ipconfig /all | Where-Object {$_ -match '(Subnet Mask).*' } | out-null; $Matches[0])

Write-Output "`nSubnets: " $Subnets

$Gateways = $(ipconfig /all | Where-Object {$_ -match '(Default Gateway).*' } | out-null; $Matches[0])

Write-Output "`nGateways: " $Gateways

$DNSServers = $(ipconfig /all | Where-Object {$_ -match '(DNS Servers).*' } | out-null; $Matches[0])

Write-Output "`nDNS Servers: " $DNSServers

# Get Public IP

$PublicIP = (Invoke-WebRequest -UseBasicParsing -uri "http://ifconfig.me/ip").Content

Write-Output "`nPublic IP: " $PublicIP
