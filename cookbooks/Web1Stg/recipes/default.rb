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
end

iis_pool 'ActivatorComplete' do
     runtime_version "2.0"
     pipeline_mode :Integrated
     action :add
end

iis_pool 'BBOUnsubscribe' do
      runtime_version "2.0"
      pipeline_mode :Integrated
      action :add
end

iis_pool 'Buick - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Buick Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Cadillac - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Cadillac Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'cCareReply' do
       runtime_version "2.0"
       pipeline_mode :Integrated
       action :add
end

iis_pool 'Chevrolet - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Chevrolet Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'ClickCapture' do
        runtime_version "2.0"
        pipeline_mode :Integrated
        action :add
end

iis_pool 'ClickCaptureForURL' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end
iis_pool 'ConsumerReply' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'EtradeinBG' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'EtradeInMatrix' do
         runtime_version "2.0"
         pipeline_mode :Classic
         action :add
end
iis_pool 'EtradeinSP' do
         runtime_version "2.0"
         pipeline_mode :Classic
         action :add
end
iis_pool 'EZCredit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'GM Certified' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'GMC - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'GMC Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'GMSupplier Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Infinity - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Infinity Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'intelliprice' do
         runtime_version "2.0"
         pipeline_mode :Classic
         action :add
end
iis_pool 'Invitation' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Nissan - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Nissan Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'SafetyNet' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'StartPage' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Training' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'TrainingSite' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Unsubscribe' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Video' do
         runtime_version "2.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Volvo - Credit' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'Volvo Redirect' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end

iis_pool 'VYT' do
         runtime_version "4.0"
         pipeline_mode :Integrated
         action :add
end


iis_site 'ActivatorComplete' do
  bindings "http/*:80:activatorcomplete.com,https/*:443:activatorcomplete.com,http/*:80:www.activatorcomplete.com,https/*:443:www.activatorcomplete.com"
  path "#{node['iis']['pubroot']}/ActivatorComplete"
  action [:add,:start]
end

iis_site 'Buick - Credit' do
  bindings "http/*:80:Buick-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Buick - Credit"
  action [:add,:start]
end

iis_site 'Buick Redirect' do
  bindings "http/*:80:Buick-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Buick"
  action [:add,:start]
end

iis_site 'Cadillac - Credit' do
  bindings "http/*:80:Cadillac-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Cadillac - Credit"
  action [:add,:start]
end

iis_site 'Cadillac Redirect' do
  bindings "http/*:80:Cadillac-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Cadillac"
  action [:add,:start]
end

iis_site 'Chevrolet - Credit' do
  bindings "http/*:80:Chevrolet-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Chevrolet - Credit"
  action [:add,:start]
end

iis_site 'Chevrolet Redirect' do
  bindings "http/*:80:Chevrolet-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/Chevrolet"
  action [:add,:start]
end

iis_site 'GM Certified' do
  bindings "http/*:80:gmcertified-blackbook-trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/GM Certified"
  action [:add,:start]
end

iis_site 'GMC - Credit' do
  bindings "http/*:80:GMC-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/GMC - Credit"
  action [:add,:start]
end

iis_site 'GMC Redirect' do
  bindings "http/*:80:GMC-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/GMC"
  action [:add,:start]
end

iis_site 'GMSupplier Redirect' do
  bindings "http/*:80:gmsupplier-blackbook-trade.intelliprice.com,http/*:80:gm-blackbook-trade.intelliprice.com"
  path "#{node['iis']['docroot']}/GMRedirectSites/GMSupplier Redirect"
  action [:add,:start]
end

iis_site 'Infinity - Credit' do
  bindings "http/*:80:Infiniti-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/NissanRedirectSites/Infinity - Credit"
  action [:add,:start]
end

iis_site 'Infinity Redirect' do
  bindings "http/*:80:Infiniti-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/NissanRedirectSites/Infinity"
  action [:add,:start]
end

iis_site 'Nissan - Credit' do
  bindings "http/*:80:Nisssan-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/NissanRedirectSites/Nissan - Credit"
  action [:add,:start]
end

iis_site 'Nissan Redirect' do
  bindings "http/*:80:Nisssan-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/NissanRedirectSites/Nissan"
  action [:add,:start]
end

iis_site 'Volvo Credit' do
  bindings "http/*:80:Volvo-BlackBook-Credit.intelliprice.com"
  path "#{node['iis']['docroot']}/VolvoRedirectSites/Volvo - Credit"
  action [:add,:start]
end

iis_site 'Volvo Redirect' do
  bindings "http/*:80:Volvo-BlackBook-Trade.intelliprice.com"
  path "#{node['iis']['docroot']}/VolvoRedirectSites/Volvo"
  action [:add,:start]
end

iis_site 'Default Web Site' do
  protocol :http
  port 80
  path "#{node['iis']['pubroot']}/wwwroot/Veretech"
  action [:config,:start]
end

iis_app "LeadInsight" do
  site_name 'ActivatorComplete'
  path "/LeadInsight"
  application_pool "ActivatorComplete"
  physical_path "#{node['iis']['pubroot']}/ActivatorComplete/LeadInsight"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "BBOUnsubscribe" do
  site_name 'Default Web Site'
  path "/BBOUnsubscribe"
  application_pool "BBOUnsubscribe"
  physical_path "#{node['iis']['docroot']}/BBOUnsubscribe"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "cCareReply" do
  site_name 'Default Web Site'
  path "/cCareReply"
  application_pool "cCareReply"
  physical_path "#{node['iis']['docroot']}/cCareReply"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "ClickCaptureForURL" do
  site_name 'Default Web Site'
  path "/ClickCaptureForURL"
  application_pool "ClickCaptureForURL"
  physical_path "#{node['iis']['docroot']}/ClickCaptureForURL"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "ConsumerReply" do
  site_name 'Default Web Site'
  path "/ConsumerReply"
  application_pool "ConsumerReply"
  physical_path "#{node['iis']['docroot']}/ConsumerReply"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "EtradeinBG" do
  site_name 'Default Web Site'
  path "/EtradeinBG"
  application_pool "EtradeinBG"
  physical_path "#{node['iis']['docroot']}/EtradeinBG"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "EtradeInMatrix" do
  site_name 'Default Web Site'
  path "/EtradeInMatrix"
  application_pool "EtradeInMatrix"
  physical_path "#{node['iis']['docroot']}/EtradeInMatrix"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "EtradeinSP" do
  site_name 'Default Web Site'
  path "/EtradeinSP"
  application_pool "EtradeinSP"
  physical_path "#{node['iis']['docroot']}/EtradeinSP"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "EZCredit" do
  site_name 'Default Web Site'
  path "/EZCredit"
  application_pool "EZCredit"
  physical_path "#{node['iis']['docroot']}/EZCredit"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "StartPage" do
  site_name 'Default Web Site'
  path "/StartPage"
  application_pool "StartPage"
  physical_path "#{node['iis']['docroot']}/StartPage"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "Training" do
  site_name 'Default Web Site'
  path "/Training"
  application_pool "Training"
  physical_path "#{node['iis']['docroot']}/Training"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "TrainingSite" do
  site_name 'Default Web Site'
  path "/trainingSite"
  application_pool "TrainingSite"
  physical_path "#{node['iis']['docroot']}/trainingSite"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "Unsubscribe" do
  site_name 'Default Web Site'
  path "/Unsubscribe"
  application_pool "Unsubscribe"
  physical_path "#{node['iis']['docroot']}/Unsubscribe"
  enabled_protocols "http,net.pipe"
  action :add
end

iis_app "VYT" do
  site_name 'Default Web Site'
  path "/VYT"
  application_pool "VYT"
  physical_path "#{node['iis']['docroot']}/VYT"
  enabled_protocols "http,net.pipe"
  action :add
end
