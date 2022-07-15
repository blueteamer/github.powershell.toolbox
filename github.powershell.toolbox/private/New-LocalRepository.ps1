function New-LocalRepository {
    param (
        [String] $NewRepositoryName,
        [String] $GitHubUserName
    )

    $localPath = Get-Location
            
    New-Item -ItemType Directory -Name "$NewRepositoryName" 
    Set-Location -Path "$localPath\$NewRepositoryName" 

    Set-Content -Value "New repository for $NewRepositoryName" -Path ".\Readme.md"
       
    git init 
    git add .
    git commit -m "Initial"

    git branch -M main
    git remote add origin "https://github.com/$GitHubUserName/$NewRepositoryName.git"
    git push -u origin main
    
}