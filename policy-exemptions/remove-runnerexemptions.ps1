param (
  [Parameter(Mandatory)]
  [ValidateNotNullOrEmpty()]
  [string]
  $resourceGroupName
 
  [Parameter(Mandatory)]
  [ValidateNotNullOrEmpty()]
  [string]
  $runnerName
)

$runnerID = (get-azvm -ResourceGroupName $resourceGroupName -Name $runnerName).id

Get-AzPolicyExemption -scope $runnerID | remove-AzPolicyExemption
