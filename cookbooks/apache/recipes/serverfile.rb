
hostname = node['hostname']
file '/etc/motd' do 
content " hostname :  #{hostname}"
end
