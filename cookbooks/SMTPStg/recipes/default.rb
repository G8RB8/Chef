#
# Cookbook Name:: SMTPStg
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_directory "D:\\VeretechServices" do
  source "VeretechServices"
end
remote_directory "D:\\Gammadyne" do
  source "Gammadyne"
end

windows_batch "AppraisalMessenger" do
not_if {registry_key_exists?('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Veretech Appraisal Messenger')}
  cwd "D:\\VeretechServices\\AppraisalMessenger"
  code <<-EOH
  D:\\VeretechServices\\AppraisalMessenger\\InstallUtil.exe D:\\VeretechServices\\AppraisalMessenger\\AppraisalMessenger.exe
  EOH
  action :run
end

windows_batch "LeadAssembler" do
not_if {registry_key_exists?('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Veretech Lead Assembler')}
  cwd "D:\\VeretechServices\\LeadAssembler"
  code <<-EOH
  D:\\VeretechServices\\LeadAssembler\\InstallUtil D:\\VeretechServices\\LeadAssembler\\LeadAssembler.exe
  EOH
  action :run
end

windows_batch "Email Checker" do
not_if {registry_key_exists?('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Veretech Email Checker Service')}
  cwd "D:\\VeretechServices\\EmailChecker"
  code <<-EOH
  D:\\VeretechServices\\EmailChecker\\InstallUtil D:\\VeretechServices\\EmailChecker\\VeretechEmailChecker.exe
  EOH
  action :run
end

windows_batch "LeadPosting" do
not_if {registry_key_exists?('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Veretech LeadPosting')}
  cwd "D:\\VeretechServices\\LeadPosting"
  code <<-EOH
  D:\\VeretechServices\\LeadPosting\\InstallUtil D:\\VeretechServices\\LeadPosting\\VeretechLeadPosting.exe
  EOH
  action :run
end

windows_batch "SpanishHelper" do
not_if {registry_key_exists?('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Veretech.SpanishHelper')}
  cwd "D:\\VeretechServices\\SpanishHelper"
  code <<-EOH
  D:\\VeretechServices\\SpanishHelper\\InstallUtil D:\\VeretechServices\\SpanishHelper\\Veretech.SpanishHelper.exe
  EOH
  action :run
end
service "AppraisalMessenger" do
  service_name "Veretech Appraisal Messenger"
  action [:enable, :start]
end

service "Veretech Email Checker Service" do
  service_name "Veretech Email Checker Service"
  action [:enable, :start]
end

service "Veretech Lead Assembler" do
  service_name "Veretech Lead Assembler"
  action [:enable, :start]
end

service "Veretech LeadPosting" do
  service_name "Veretech LeadPosting"
  action [:enable, :start]
end

service "Veretech.SpanishHelper" do
  service_name "Veretech.SpanishHelper"
  action [:enable, :start]
end
