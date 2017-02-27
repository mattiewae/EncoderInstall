Set-ExecutionPolicy RemoteSigned

Set-Location -Path $home\Downloads
wget https://github.com/mattiewae/EncoderInstall/blob/master/encoder.zip?raw=true -OutFile .\encoder.zip
wget https://github.com/mattiewae/EncoderInstall/blob/master/exe.zip?raw=true -OutFile .\exe.zip

Expand-Archive -Path .\encoder.zip
Expand-Archive -Path .\exe.zip

Move-Item .\encoder -Destination C:\ -Force
Move-Item .\exe\encoder.lnk $home\Desktop -Force
Move-Item .\exe\Encoder_V19.exe C:\encoder -Force 

Remove-Item .\encoder.zip
Remove-Item .\exe.zip
Remove-Item .\exe