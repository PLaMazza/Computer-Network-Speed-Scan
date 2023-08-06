# get Ethenet connection speed 
$Speed = (Get-NetAdapter -name Ethernet | Select-Object linkspeed)

# Setting network file location, you will need to add a file path 
$NetworkFile = ""

# Get general information name and date
$Name = (hostname)
$Date = (get-date -Format "MM/dd/yyyy HH:MM")

# I have a if statement to sort computers based on computer name, if you want all the speeds in the same file you can remark out line 9,11,12, and 13
if ($name -like "*-employee") {
Write-output "$($Name) $($Speed) $($Date)" >> "$NetworkFile\EmployeeComputerNetworkSpeeds.txt"
} else {
Write-output "$($Name) $($Speed) $($Date)" >> "$NetworkFile\RegComputerNetworkSpeeds.txt"
}
