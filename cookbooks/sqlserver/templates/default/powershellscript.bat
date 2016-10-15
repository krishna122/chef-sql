S$downloadfile=Invoke-WebRequest -Uri "https://s3.amazonaws.com/sqlbucket2008/new+folder/SQL+ZIPFILE.zip" -OutFile "C:\tempDownloads\sql2008.zip"
$downloadfile


$lol=Add-Type -assembly “system.io.compression.filesystem”
$lol.[io.compression.zipfile]::ExtractToDirectory("C:\tempDownloads\sql2008.zip", "C:\tempDownloads\extractedfile")