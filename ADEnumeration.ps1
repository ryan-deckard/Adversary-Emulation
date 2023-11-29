$PDC = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.Name
$DN = ([adsi]'').distinguishedName 
$LDAP = "LDAP://$PDC/$DN"
$LDAP
$direntry = New-Object System.DirectoryServices.DirectoryEntry($LDAP)
$dirsearcher = New-Object System.DirectoryServices.DirectorySearcher($direntry)
$dirsearcher.filter = "samAccountType=805306368"
$result = $dirsearcher.FindAll()

Foreach ($obj in $result) {
    Foreach ($prop in $obj.Properties) {
        $prop
    }

    Write-Host "-------------------------------"
}

