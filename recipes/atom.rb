#
# Cookbook:: workstation
# Recipe:: atom
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install Atom packages

node['workstation']['atom_pkg'].each do |atompkg|
  execute "Install atom package #{atompkg}" do
    command "apm install #{atompkg}"
  end
end
