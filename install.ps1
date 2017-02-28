Set-ExecutionPolicy RemoteSigned

Set-Location -Path $home\Downloads
wget https://github.com/mattiewae/EncoderInstall/blob/master/encoder.zip?raw=true -OutFile .\encoder.zip
wget https://github.com/mattiewae/EncoderInstall/blob/master/exe.zip?raw=true -OutFile .\exe.zip
wget https://github.com/mattiewae/EncoderInstall/blob/master/EncoderPreset.zip?raw=true -OutFile .\EncoderPreset.zip 

Expand-Archive -Path .\EncoderPreset.zip
Expand-Archive -Path .\encoder.zip
Expand-Archive -Path .\exe.zip

Remove-Item C:\encoder -Recurse

Move-Item .\EncoderPreset\FTP.epr -Destination "$home\Documents\Adobe\Adobe Media Encoder\10.0\Presets\" -Force
Move-Item .\encoder -Destination C:\ -Force 
Move-Item .\exe\encoder.lnk $home\Desktop -Force
Move-Item .\exe\Encoder_V19.exe C:\encoder -Force 

Remove-Item .\encoder.zip
Remove-Item .\exe.zip
Remove-Item .\exe 
Remove-Item .\EncoderPreset
Remove-Item .\EncoderPreset.zip