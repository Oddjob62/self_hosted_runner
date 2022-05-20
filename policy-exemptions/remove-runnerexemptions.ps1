param (
  [Parameter(Mandatory)]
  [ValidateNotNullOrEmpty()]
  [string]$resourceGroupName,
 
  [Parameter(Mandatory)]
  [ValidateNotNullOrEmpty()]
  [string]$runnerName
)

Install-Module -Name 'Az' -Force -Scope AllUsers

$runnerID = "/subscriptions/ff65e97e-c6be-4f35-b6b7-e52ce88bf5b2/resourceGroups/$resourceGroupName/providers/Microsoft.Compute/virtualMachines/$runnerName"

Get-AzPolicyExemption -scope $runnerID #| remove-AzPolicyExemption
