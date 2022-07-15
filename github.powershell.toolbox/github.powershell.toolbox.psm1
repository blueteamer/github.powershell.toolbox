<#
 # Collection of functionality to use with GitHub
 # Date: July 2022
 # Author: Johnny 
 #>

 # 1. Load required modules with Import-Module 
 # 2. Load public and private function from subfolders 

 $public = @(Get-ChildItem -Path $PSScriptRoot\public\*.ps1 -Recurse)
 $private = @(Get-ChildItem -Path $PSScriptRoot\private\*.ps1 -Recurse)

 foreach ($file in @($public + $private)) {
    try {
        . $file.FullName
    }
    catch {
        Write-Error -Message "Import of functions failed from $($file.FullName): $_"
        $true
    }
 }


 # 3. Export-ModuleMembers
Export-ModuleMember -Function "New-GitHubWorkspace" 



