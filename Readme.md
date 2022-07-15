A collection of useful GitHub stuff to make my daily work easier. 
# GitHub PowerShell Tools

This module will contain some useful stuff, that I need during my day-to-day work with Git and GitHub. 

## Creation of new projects 
Everytime I start a new project I have to switch between various mediums to set up all the stuff I need to take care of my scripts. 
- create a repo in GitHub 
- initialize a local repo on my computer 
- connect both with each other 
- bla bla bla 

Now, this is done in a short-cut cmdlet. 

## Example
Imagine you are me and you want to start a new project called "microsoft.powershell.futureprediction". 

Let's see how this works.

```
New-GitHubProject -Name "microsoft.powershell.futureprediction" -User "blueteamer" -IsPrivate $false
```

This will do the following - assuming you are in a folder c:\fancystuff\
1. It creates a remote repository 'https://github.com/blueteamer/github.powershell.toolbox' 
2. It creates a subfolder 'c:\fancystuff\microsoft.powershell.futureprediction' 
3. It switches to the new folder and git init's the hell out of it 
4. It creates a Readme.md, commits it and pushes the whole stuff to the remote repo



