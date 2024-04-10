# Alias
Set-Alias vim nvim
Set-Alias grep findstr

# Oh-My-Posh
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/kushal.omp.json' | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Komorebi
$Env:KOMOREBI_CONFIG_HOME = $Env:USERPROFILE + '\.config\komorebi'