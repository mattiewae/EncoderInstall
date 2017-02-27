Set-ExecutionPolicy RemoteSigned

Set-Location -Path $home\Downloads
wget https://github.com/mattiewae/EncoderInstall/blob/master/encoder.zip?raw=true -OutFile .\encoder.zip

Expand-Archive -Path encoder.zip -DestinationPath test

