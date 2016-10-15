Add-Type -assemblyname 'system.io.compression.filesystem'
[io.compression.zipfile]::ExtractToDirectory("/tempDownloads/sql2008.zip", "/tempDownloads/extractedfile")