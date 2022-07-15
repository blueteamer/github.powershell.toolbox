function New-GitHubWorkspace {
    param (
        [String] $NewWorkspaceName,
        [String] $GitHubUserName,
        [boolean] $IsPrivate
    )

    $githubpat = $env:github_pat 
    if ($githubpat.Length -lt 1) {
        Write-Warning -Message "Please check environmentvariable 'GITHUB_PTA'. Should not be emtpy."        
        $githubpat = Read-Host -Prompt "GitHub private access token"
    }

    New-GitHubRepository -NewRepositoryName $NewWorkspaceName -IsPrivate $IsPrivate -GitHubPrivateAccessToken $githubpat

    New-LocalRepository -NewRepositoryName $NewWorkspaceName -GitHubUserName $GitHubUserName

}