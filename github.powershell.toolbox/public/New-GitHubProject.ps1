function New-GitHubProject {
    param (
        [String] $Name,
        [String] $User,
        [boolean] $IsPrivate
    )

    $gitHubPrivateAccessToken = $env:github_pat 
    if ($gitHubPrivateAccessToken.Length -lt 1) {
        Write-Warning -Message "Please check environmentvariable 'GITHUB_PTA'. Should not be emtpy."        
        $gitHubPrivateAccessToken = Read-Host -Prompt "GitHub private access token"
    }

    New-GitHubRepository -NewRepositoryName $Name -IsPrivate $IsPrivate -GitHubPrivateAccessToken $gitHubPrivateAccessToken

    New-LocalRepository -NewRepositoryName $Name -GitHubUserName $User

}