echo OFF

echo Install Chocolatey 
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco upgrade chocolatey -y

echo Git
choco install git -y

echo JDK 
choco install oraclejdk -y

echo Eclipse
choco install eclipse -y

echo Eclipse IDE for Java Developers
choco install eclipse-java-oxygen -y

echo Android Studio
choco install androidstudio -y

echo Python
choco install python -y

echo VMware
choco install vmware-workstation-player -y

echo Visual Studio Code
choco install vscode -y

echo Visual Studio 2019
choco install visualstudio2019community -y

echo Visual Studio 2022
choco install visualstudio2022community -y

echo ███████ ██ ███    ██ ██ ███████ ██   ██
echo ██      ██ ████   ██ ██ ██      ██   ██ 
echo █████   ██ ██ ██  ██ ██ ███████ ███████
echo ██      ██ ██  ██ ██ ██      ██ ██   ██
echo ██      ██ ██   ████ ██ ███████ ██   ██