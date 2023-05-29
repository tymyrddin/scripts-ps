#.ps1

# Run on a Domain Controller.
# AddDays field is set to seven days.
# Note: The 'when Created' field is great for noticing some inconsistencies.

import-module ActiveDirectory;
$When = ((Get-Date).AddDays(-7)).Date;
Get-ADUser -Filter {whenCreated -ge $When} -Properties whenCreated |
sort whenCreated -descending