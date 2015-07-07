#
# Author:: Seth Chisamore (<schisamo@chef.io>)
# Cookbook Name:: iis
# Recipe:: default
#
# Copyright 2011, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Always add this, so that we don't require this to be added if we want to add other components

remote_directory "D:\\Inetpub" do
  source "Inetpub"
  action :create
end
remote_directory "D:\\Veretech Scripts" do
  source "Inetpub"
  action :create
end
iis_pool 'AutoLead' do
     runtime_version "2.0"
     pipeline_mode :Integrated
     action :add
end

iis_pool 'AutoUsaADF' do
      runtime_version "2.0"
      pipeline_mode :Integrated
      action :add
end

iis_pool 'BBPriceEngine' do
       runtime_version "2.0"
       pipeline_mode :Integrated
       action :add
end

iis_pool 'HTTPFormPost' do
        runtime_version "2.0"
        pipeline_mode :Integrated
        action :add
end

iis_pool 'OneSourceADF' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'ToyotaTLF' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'Veretech.DealerServices' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'Veretech.LeadServices' do
         runtime_version "2.0"
         pipeline_mode :Classic
         action :add
end
iis_pool 'Veretech.Products' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'Veretech.ProductServices' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'Veretech.ProductsServices' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'WebDirection' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'WebServices' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_site 'Default Web Site' do
  protocol :http
  port 80
  path "#{node['iis']['pubroot']}/wwwroot"
  action [:config,:start]
end
iis_app "AutoLead" do
  site_name 'Default Web Site'
  path "/AutoLead"
  application_pool "AutoLead"
  physical_path "#{node['iis']['docroot']}/AutoLead"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "AutoUsaADF" do
  site_name 'Default Web Site'
  path "/AutoUsaADF"
  application_pool "AutoUsaADF"
  physical_path "#{node['iis']['docroot']}/AutoUsaADF"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "BBPriceEngine" do
  site_name 'Default Web Site'
  path "/BBPriceEngine"
  application_pool "BBPriceEngine"
  physical_path "#{node['iis']['docroot']}/BBPriceEngine"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "HTTPFormPost" do
  site_name 'Default Web Site'
  path "/HTTPFormPost"
  application_pool "HTTPFormPost"
  physical_path "#{node['iis']['docroot']}/HTTPFormPost"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "OneSourceADF" do
  site_name 'Default Web Site'
  path "/OneSourceADF"
  application_pool "OneSourceADF"
  physical_path "#{node['iis']['docroot']}/OneSourceADF"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "ToyotaTLF" do
  site_name 'Default Web Site'
  path "/ToyotaTLF"
  application_pool "ToyotaTLF"
  physical_path "#{node['iis']['docroot']}/ToyotaTLF"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "Veretech.DealerServices" do
  site_name 'Default Web Site'
  path "/Veretech.DealerServices"
  application_pool "Veretech.DealerServices"
  physical_path "#{node['iis']['docroot']}/Veretech.DealerServices"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "Veretech.LeadServices" do
  site_name 'Default Web Site'
  path "/Veretech.LeadServices"
  application_pool "Veretech.LeadServices"
  physical_path "#{node['iis']['docroot']}/Veretech.LeadServices"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "Veretech.Products" do
  site_name 'Default Web Site'
  path "/Veretech.Products"
  application_pool "Veretech.Products"
  physical_path "#{node['iis']['docroot']}/Veretech.Products"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "Veretech.ProductServices" do
  site_name 'Default Web Site'
  path "/Veretech.ProductServices"
  application_pool "Veretech.ProductServices"
  physical_path "#{node['iis']['docroot']}/Veretech.ProductServices"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "Veretech.ProductServices" do
  site_name 'Default Web Site'
  path "/Veretech.ProductsServices"
  application_pool "Veretech.ProductServices"
  physical_path "#{node['iis']['docroot']}/Veretech.ProductServices"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "WebDirection" do
  site_name 'Default Web Site'
  path "/WebDirection"
  application_pool "WebDirection"
  physical_path "#{node['iis']['docroot']}/WebDirection"
  enabled_protocols "http,net.pipe"
  action :add
end
iis_app "WebServices" do
  site_name 'Default Web Site'
  path "/WebServices"
  application_pool "WebServices"
  physical_path "#{node['iis']['docroot']}/WebServices"
  enabled_protocols "http,net.pipe"
  action :add
end
