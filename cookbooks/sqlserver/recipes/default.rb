directory 'C:\tempDownloads' do
	action :create
end

directory 'C:\tempDownloads\extractedfile' do
	action :create
end

remote_file 'C:\tempDownloads\sql2008.zip' do
	source 'https://s3.amazonaws.com/sqlbucket2008/new+folder/SQLZIPFILE.zip'
end

powershell_script "extract and install" do
  code <<-EOH
    $haha=Add-Type -assemblyname 'system.io.compression.filesystem'
    $haha.[io.compression.zipfile]::ExtractToDirectory("/tempDownloads/sql2008.zip", "/tempDownloads/extractedfile")
    EOH
 end

remote_file 'C:\tempDownloads\extractedfile\ConfigurationFilelat.ini' do
	source 'https://s3.amazonaws.com/sqlbucket2008/new+folder/ConfigurationFilelat.ini'
end

powershell_script "rename" do
 code <<-EOH
    servermanager		
    move-item "/tempDownloads/extractedfile/SQL ZIPFILE" "/tempDownloads/extractedfile/SQLZIPFILE"
    remove-item "/tempDownloads/sql2008.zip"
    EOH
end


execute "lol" do
	command 'C:\tempDownloads\extractedfile\SQLZIPFILE\setup.exe /ConfigurationFile=C:\tempDownloads\extractedfile\ConfigurationFilelat.ini'
end                                                                                 

