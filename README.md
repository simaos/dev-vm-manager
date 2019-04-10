# dev-vm-manager
Manage developer VMs

Only single feature implemented - may add further in future. Creates an Azure VM (with all related resources derived from the VM name). This enables easy identification of related resource and full deletion of all of them by removing the resource group.
## Prerequisites
AzureRm module is installed.
For example, using 
```Install-Module AzureRm -Force```
