#
# Cookbook Name:: Features
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

powershell_script "FileAndStorage-Services" do
     code "add-windowsfeature FileAndStorage-Services"
     action :run
end
powershell_script "Storage-Services" do
     code "add-windowsfeature Storage-Services"
     action :run
end
powershell_script "NET-Framework-Features" do
     code "add-windowsfeature NET-Framework-Features"
     action :run
end
powershell_script "NET-Framework-Core" do
     code "add-windowsfeature NET-Framework-Core"
     action :run
end
powershell_script "NET-Framework-45-Features" do
     code "add-windowsfeature NET-Framework-45-Features"
     action :run
end
powershell_script "NET-Framework-45-Core" do
     code "add-windowsfeature NET-Framework-45-Core"
     action :run
end
powershell_script "NET-WCF-Services45" do
     code "add-windowsfeature NET-WCF-Services45"
     action :run
end
powershell_script "NET-WCF-TCP-PortSharing45" do
     code "add-windowsfeature NET-WCF-TCP-PortSharing45"
     action :run
end
powershell_script "RSAT" do
     code "add-windowsfeature RSAT"
     action :run
end
powershell_script "RSAT-Feature-Tools" do
     code "add-windowsfeature RSAT-Feature-Tools"
     action :run
end
powershell_script "Telnet-Client" do
     code "add-windowsfeature Telnet-Client"
     action :run
end
powershell_script "TFTP-Client" do
     code "add-windowsfeature TFTP-Client"
     action :run
end
powershell_script "User-Interfaces-Infra" do
     code "add-windowsfeature User-Interfaces-Infra"
     action :run
end
powershell_script "Server-Gui-Mgmt-Infra" do
     code "add-windowsfeature Server-Gui-Mgmt-Infra"
     action :run
end
powershell_script "Server-Gui-Shell" do
     code "add-windowsfeature Server-Gui-Shell"
     action :run
end
powershell_script "PowerShellRoot" do
     code "add-windowsfeature PowerShellRoot"
     action :run
end
powershell_script "PowerShell" do
     code "add-windowsfeature PowerShell"
     action :run
end
powershell_script "PowerShell-V2" do
     code "add-windowsfeature PowerShell-V2"
     action :run
end
powershell_script "PowerShell-ISE" do
     code "add-windowsfeature PowerShell-ISE"
     action :run
end
powershell_script "WoW64-Support" do
     code "add-windowsfeature WoW64-Support"
     action :run
end
