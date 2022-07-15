function New-GitHubRepository {
    param (        
        [String] $NewRepositoryName,
        [boolean] $IsPrivate,
        [String] $GitHubPrivateAccessToken
    )
    

    $headers = @{
        "Authorization" = "token $GitHubPrivateAccessToken"
    }

    $body = @{
        "name" = "$NewRepositoryName"
        "private" = $IsPrivate
    }

    $Url = "https://api.github.com/user/repos"
    
    $output = Invoke-RestMethod -Method "Post" -Headers $headers -Body ($body | ConvertTo-Json) -Uri $Url
    return $output
}