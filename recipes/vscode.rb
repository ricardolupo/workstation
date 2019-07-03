#
# Cookbook:: workstation
# Recipe:: vscode
#
# Copyright:: 2019, The Authors, All Rights Reserved.

sc_vscode_installer 'code' do
  action :install
end

%w(Pendrica.Chef ms-kubernetes-tools.vscode-kubernetes-tools ).each do |vscode_ext|
  sc_vscode_extension vscode_ext do
    action :install
  end
end
