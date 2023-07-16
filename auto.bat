@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause

:: 항상 자동으로 yes를 선택하도록 설정
choco feature enable --name=allowGlobalConfirmation

:: 먼저 기존 패키지 업데이트
choco upgrade all -y

:: 사용할 어플리케이션 설치
choco install git.install -y --params "/GitAndUnixToolsOnPath /WindowsTerminal /WindowsTerminalProfile /NoGuiHereIntegration"
git config --global color.ui auto
choco install oracle17jdk
choco install eclipse -y
choco install eclipse-java-oxygen -y
choco install androidstudio -y
choco install python -y
choco install vmware-workstation-player -y
choco install vscode -y
choco install visualstudio2019community -y
choco install visualstudio2022community -y

:END
