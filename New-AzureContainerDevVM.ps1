Connect-AzureRmAccount
$cred = Get-Credential
New-AzureRmVm `
    -ResourceGroupName "containerdev-rg" `
    -Name "containerdev-vm" `
    -Location "WestEurope" `
    -VirtualNetworkName "containerdev-vn" `
    -SubnetName "containerdev-sn" `
    -SecurityGroupName "containerdev-sg" `
    -PublicIpAddressName "containerdev-ip" `
    -ImageName "MicrosoftWindowsServer:WindowsServer:2016-Datacenter-with-Containers:latest" `
    -Credential $cred `
    -AsJob
