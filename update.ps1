Set-ExecutionPolicy RemoteSigned


Write-Host "Update apps"
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattiewae/test/master/updateapps.ps1'))


