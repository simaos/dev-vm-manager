Import-Module AzureRm
Connect-AzureRmAccount
$credential = Get-Credential
$name = "containerdev"
New-AzureRmVm `
    -ResourceGroupName "${name}-rg" `
    -Name "${name}-vm" `
    -Location "WestEurope" `
    -VirtualNetworkName "${name}-vn" `
    -SubnetName "${name}-sn" `
    -SecurityGroupName "${name}-sg" `
    -PublicIpAddressName "${name}-ip" `
    -ImageName "MicrosoftWindowsServer:WindowsServer:2016-Datacenter-with-Containers:latest" `
    -Credential $credential
