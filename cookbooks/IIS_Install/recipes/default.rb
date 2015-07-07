#
# Cookbook Name:: IIS_Install
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
powershell_script "Web-Server" do
     code "add-windowsfeature Web-Server"
     action :run
end
powershell_script "Web-WebServer" do
     code "add-windowsfeature Web-WebServer"
     action :run
end
powershell_script "Web-Common-Http" do
     code "add-windowsfeature Web-Common-Http"
     action :run
end
powershell_script "Web-Default-Doc" do
     code "add-windowsfeature Web-Default-Doc"
     action :run
end
powershell_script "Web-Dir-Browsing" do
     code "add-windowsfeature Web-Dir-Browsing"
     action :run
end
powershell_script "Web-Http-Errors" do
     code "add-windowsfeature Web-Http-Errors"
     action :run
end
powershell_script "Web-Static-Content" do
     code "add-windowsfeature Web-Static-Content"
     action :run
end
powershell_script "Web-Health" do
     code "add-windowsfeature Web-Health"
     action :run
end
powershell_script "Web-Http-Logging" do
     code "add-windowsfeature Web-Http-Logging"
     action :run
end
powershell_script "Web-ODBC-Logging" do
     code "add-windowsfeature Web-ODBC-Logging"
     action :run
end
powershell_script "Web-Performance" do
     code "add-windowsfeature Web-Performance"
     action :run
end
powershell_script "Web-Stat-Compression" do
     code "add-windowsfeature Web-Stat-Compression"
     action :run
end
powershell_script "Web-Security" do
     code "add-windowsfeature Web-Security"
     action :run
end
powershell_script "Web-Filtering" do
     code "add-windowsfeature Web-Filtering"
     action :run
end
powershell_script "Web-Basic-Auth" do
     code "add-windowsfeature Web-Basic-Auth"
     action :run
end
powershell_script "Web-Digest-Auth" do
     code "add-windowsfeature Web-Digest-Auth"
     action :run
end
powershell_script "Web-IP-Security" do
     code "add-windowsfeature Web-IP-Security"
     action :run
end
powershell_script "Web-Url-Auth" do
     code "add-windowsfeature Web-Url-Auth"
     action :run
end
powershell_script "Web-Windows-Auth" do
     code "add-windowsfeature Web-Windows-Auth"
     action :run
end
powershell_script "Web-Metabase" do
     code "add-windowsfeature Web-Metabase"
     action :run
end
powershell_script "Web-Scripting-Tools" do
     code "add-windowsfeature Web-Scripting-Tools"
     action :run
end
powershell_script "Web-App-Dev" do
  code "add-windowsfeature Web-App-Dev"
  action :run
end
powershell_script "Web-Mgmt-Console" do
  code "add-windowsfeature Web-Mgmt-Console"
  action :run
end
powershell_script "Web-Net-Ext" do
  code "add-windowsfeature Web-Net-Ext"
  action :run
end
powershell_script "Web-Net-Ext45" do
  code "add-windowsfeature Web-Net-Ext45"
  action :run
end
powershell_script "Web-ASP" do
  code "add-windowsfeature Web-ASP"
  action :run
end
powershell_script "Web-Asp-Net" do
  code "add-windowsfeature Web-Asp-Net"
  action :run
end
powershell_script "Web-Asp-Net45" do
  code "add-windowsfeature Web-Asp-Net45"
  action :run
end
powershell_script "Web-Includes" do
  code "add-windowsfeature Web-Includes"
  action :run
end
powershell_script "NET-Framework-Features" do
  code "add-windowsfeature NET-Framework-Features"
  action :run
end
powershell_script "AS-NET-Framework" do
  code "add-windowsfeature AS-NET-Framework"
  action :run
end
powershell_script "AS-Web-Support" do
  code "add-windowsfeature AS-Web-Support"
  action :run
end
powershell_script "NET-HTTP-Activation" do
  code "add-windowsfeature NET-HTTP-Activation"
  action :run
end
service "w3svc" do
  action [:enable, :start]
end
