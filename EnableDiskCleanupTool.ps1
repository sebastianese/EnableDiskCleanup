Function Install-DiskCleanup2008 {

<#
.SYNOPSIS
    Enables the DiskCleanup Tool on Windows Server 2008 R2. Based on:
    https://technet.microsoft.com/en-us/library/ff630161(WS.10).aspx
    Run as Admin is required
 
.DESCRIPTION
    Enables the DiskCleanup Tool on Windows Server 2008 R2. Based on:
    https://technet.microsoft.com/en-us/library/ff630161(WS.10).aspx
 
.EXAMPLE
     Install-DiskCleanup2008 

 
.NOTES
    Author:  Sebastian Schlesinger
    
#>

$SourceA= "C:\Windows\winsxs\amd64_microsoft-windows-cleanmgr_31bf3856ad364e35_6.1.7600.16385_none_c9392808773cd7da\cleanmgr.exe"
$SourceB= "C:\Windows\winsxs\amd64_microsoft-windows-cleanmgr.resources_31bf3856ad364e35_6.1.7600.16385_en-us_b9cb6194b257cc63\cleanmgr.exe.mui"
$TargetA= "C:\Windows\System32"
$TargetB= "C:\Windows\System32\en-US"

Copy-Item -Path $SourceA -Destination $TargetA
Copy-Item -Path $SourceB -Destination $TargetB

Start-Process Cleanmgr.exe
}

Function Install-DiskCleanup2012 {

<#
.SYNOPSIS
    Enables the DiskCleanup Tool on Windows Server 2012 R2. Based on:
    https://technet.microsoft.com/en-us/library/ff630161(WS.10).aspx
    Run as Admin is required
 
.DESCRIPTION
    Enables the DiskCleanup Tool on Windows Server 2012 R2. Based on:
    https://technet.microsoft.com/en-us/library/ff630161(WS.10).aspx
 
.EXAMPLE
     Install-DiskCleanup2012 

 
.NOTES
    Author:  Sebastian Schlesinger
    
#>

$SourceA= "C:\Windows\WinSxS\amd64_microsoft-windows-cleanmgr_31bf3856ad364e35_6.2.8250.0_none_517ba44fbbb4ff2e"
$SourceB= "C:\Windows\WinSxS\amd64_microsoft-windows-cleanmgr.resources_31bf3856ad364e35_6.2.8250.0_en-us_420ddddbf6cff3b7"
$TargetA= "C:\Windows\System32"
$TargetB= "C:\Windows\System32\en-US"

Copy-Item -Path $SourceA -Destination $TargetA
Copy-Item -Path $SourceB -Destination $TargetB

Start-Process Cleanmgr.exe
}


