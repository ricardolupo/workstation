#
# Cookbook:: workstation
# Recipe:: windows
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'chocolatey::default'

chocolatey_package 'habitat' do
  action :install
  version '0.65.0'
  options '--force'
end

node['workstation']['choco_pkgs'].each do |choco_pkgs|
  package choco_pkg do
    action :install
  end
end
