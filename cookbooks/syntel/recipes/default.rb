#
# Cookbook Name:: syntel
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#windows_package 'opera'


#directory 'c:/downloads' do  
#  action :create
#end
#remote_file 'c:/downloads/java.exe' do
#  source 'http://javadl.oracle.com/webapps/download/AutoDL?BundleId=212027'
#  action :create
#end

#windows_package 'java.exe' do 
#	action :install
#	source 'c:/downloads/java.exe'
#end	



#windows_package 'C:\Users\Administrator\Downloads\jre1.8.0_77\jre1.8.0_77.msi' do
#  source 'C:\Users\Administrator\Downloads\jre1.8.0_77\jre1.8.0_77.msi'
#end

#windows_package 'java' do
 # source 'http://javadl.oracle.com/webapps/download/AutoDL?BundleId=212027'
  #options '-ms'
  #installer_type :custom
 # action :install
#end
#directory 'C:\tempDownloads' do
#	action :create
#end

#directory 'C:\tempDownloads\extractedfile' do
#	action :create
#end	


remote_file 'C:\tempDownloads\javakit.exe' do
	source 'http://javadl.oracle.com/webapps/download/AutoDL?BundleId=211999'
end


#windows_package 'jre-8u101-windows-x64.exe' do
#  source 'C:\Users\Administrator\Downloads\jre-8u101-windows-x64.exe'
#  installer_type :custom
#  action :install
#end

