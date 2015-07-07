#
# Cookbook Name:: WEB2iis
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_directory "D:\\inetpub" do
  source "inetpub"
end

iis_pool 'BlackBookInformation' do
     runtime_version "2.0"
     pipeline_mode :Integrated
     action :add
end

iis_pool 'BlackbookInsight' do
      runtime_version "2.0"
      pipeline_mode :Integrated
      action :add
end

iis_pool 'Enhancer' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Invitation' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Invites' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Video' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_site 'Default Web Site' do
  protocol :http
  port 80
  path "#{node['iis']['pubroot']}/wwwroot"
  action [:config,:start]
end

iis_site 'BlackBookInformation' do
  bindings "http/*:80:www.blackbookinformation.com"
  path "#{node['iis']['pubroot']}/BlackBookInformation"
  application_pool "BlackBookInformation"
  action [:add,:start]
end

iis_site 'BlackbookInsight' do
  bindings "http/*:80:www.blackbookinsight.com"
  path "#{node['iis']['pubroot']}/BlackbookInsight"
  application_pool "BlackbookInsight"
  action [:add,:start]
end

iis_site 'Invitation' do
  bindings "http/*:80:invitation.blackbookinformation.com,http/*:80:invitation.intellipriceauto.com"
  path "#{node['iis']['pubroot']}/Invitation"
  application_pool "Invitation"
  action [:add,:start]
end

iis_site 'Invites' do
  bindings "http/*:80:Invites.blackbookinformation.com"
  path "#{node['iis']['pubroot']}/Invites"
  application_pool "Invites"
  action [:add,:start]
end

iis_site 'Video' do
  bindings "http/*:80:video.blackbookinformation.com,http/*:80:video.intellipriceauto.com"
  path "#{node['iis']['pubroot']}/Video"
  application_pool "Video"
  action [:add,:start]
end

iis_app "Enhancer" do
  site_name 'BlackBookInformation'
  path "/Enhancer"
  application_pool "Enhancer"
  physical_path "#{node['iis']['pubroot']}/BlackBookInformation/Enhancer"
  enabled_protocols "http,net.pipe"
  action :add
end
