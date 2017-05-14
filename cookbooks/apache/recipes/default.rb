#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
   package = "httpd"
elsif node['platform_family'] == "debin"
   package = "apache2"
end

package 'apache' do
   package_name 'httpd' 
   action :install
end

service 'apache' do 
   service_name 'httpd'
   action [:start, :enable]
end 

directory '/etc/anjan' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


include_recipe 'apache::serverfile'
