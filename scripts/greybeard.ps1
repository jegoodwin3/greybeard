# Sanity Aliases
Set-Alias -name less -value more

# Set some paths


# Start with definitions for Git Base (MSYS)
$env:USER_HOME="C:\Users\jgoodwin3"
$env:CYGWIN_HOME="c:\cygwin64\Users\jgoodwin3"
$env:GIT_HOME="C:\Users\jgoodwin3"

# Prefer Active Tcl if default installation
if (Test-Path  "c:\Tcl\bin\tclsh.exe") { 
    $env:TCLSH="C:\Tcl\bin\tclsh.exe"
    $env:PATH="C:\Tcl\bin;$env:PATH"
}

# functions
function Ensure-ChocolateyCacheDir {
#  [CmdletBinding()]
#	Param($arg)
  if($env:LocalAppData -and $env:LocalAppData.StartsWith("$env:SystemDrive\Users")){
    	$dir = $env:LocalAppData
    }
    else {
	$dir = $env:ProgramData
    }

    if(!(Test-Path "$dir\Greybeard")) {mkdir "$dir\Greybeard" | out-null}

    return "$dir\Greybeard"
}

Set-Alias -name egc -value Ensure-ChocolateyCacheDir

function Launch-Gvim {
#  [CmdletBinding()]
#	Param($arg)
if (Test-Path "$env:SystemDrive\Program Files (x86)\Vim\vim74\gvim.exe") {
  Start-Process "$env:SystemDrive\Program Files (x86)\Vim\vim74\gvim.exe"
}
}
Set-Alias -name gvim -value Launch-Gvim 

function Start-Vim {
if (Test-Path "$env:SystemDrive\Program Files (x86)\Vim\vim74\vim.exe"){
  & "$env:SystemDrive\Program Files (x86)\Vim\vim74\vim.exe"
}
}
Set-Alias -name vi -value Start-Vim
Set-Alias -name vim -value Start-Vim

function Launch-Firefox {
  if (Test-Path "$env:SystemDrive\Program Files (x86)\Mozilla Firefox\firefox.exe") {
  & "$env:SystemDrive\Program Files (x86)\Mozilla Firefox\firefox.exe"
}
}
Set-Alias -name firefox -value Launch-Firefox
Set-Alias -name ff -value Launch-Firefox

function Launch-Chrome {
  if (Test-Path "$env:SystemDrive\Program Files (x86)\Google\Chrome\Application\chrome.exe") {
  & "$env:SystemDrive\Program Files (x86)\Google\Chrome\Application\chrome.exe"
}
}

Set-Alias -name chrome -value Launch-Chrome

function Launch-Iexplore {
  if (Test-Path "$env:SystemDrive\Program Files\Internet Explorer\iexplore.exe") {
  & "$env:SystemDrive\Program Files\Internet Explorer\iexplore.exe"
}

}

Set-Alias -name ie -value Launch-Iexplore

