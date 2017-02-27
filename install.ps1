Set-ExecutionPolicy RemoteSigned

Set-Location -Path $home\Downloads
wget https://github.com/mattiewae/test/raw/master/encoder.zip -OutFile .\encoder.zip

Expand-Archive -Path encoder.zip

