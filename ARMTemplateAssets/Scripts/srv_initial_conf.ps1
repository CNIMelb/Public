#Enable File/Print Sharing on Servers
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

#Enable WinRM
winrm quickconfig -q
netsh advfirewall firewall set rule name="Windows Remote Management (HTTP-In)" new enable=Yes

#Enable WMI Firewall Exception on Servers
netsh advfirewall firewall set rule group="Windows Management Instrumentation (WMI)" new enable=Yes

#Enable 
TZUTIL /s “AUS Eastern Standard Time”
Set-Culture en-AU
Set-WinUserLanguageList en-AU -Force
Set-WinSystemLocale -SystemLocale en-AU
Set-WinHomeLocation -GeoId 12
Set-WinUILanguageOverride -Language en-AU
$lang = New-WinUserLanguageList -Language en-AU
Set-WinUserLanguageList -languagelist $lang -Force
