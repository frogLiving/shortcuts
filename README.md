# shortcuts

### Description
Create shortcuts with powershell.  Can be used with Intune, SCCM or manually.  My time doing SCCM deployments SCCM is being used more and more to deploy shortcuts.  While I personally feel this is a better use case for GPO that option is becoming less and less favoriable so here is my contribution to the problem.

## Version 1.2
12/20/2023

### Switches
-uninstall = set to true to trigger the uninstall process

### Patch notes 12/20/2023
Fixed a logical error that prevented the "else" statement from seeing the variables.  Due to this the short would be created but not possible to remove.
