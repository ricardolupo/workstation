#
# Cookbook:: workstation
# Recipe:: windows
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'chocolatey::default'

chocolatey_package 'vagrant' do 
  action :install
  returns [0, 3010]
  notifies :request_reboot, 'reboot[reboot_computer]', :delayed
end

chocolatey_package 'habitat' do
  action :install
  version '0.66.0'
  options '--force'
end

node['workstation']['choco_pkgs'].each do |choco_pkgs|
  chocolatey_package choco_pkgs do
    action :install
  end
end

reboot 'reboot_computer' do
  action :nothing
end
