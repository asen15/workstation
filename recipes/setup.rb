package 'vim-enhanced'
package 'nano'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

template '/etc/motd' do
 source 'motd.erb'
 variables(
  :name => "Terminator"
 )
 action :create
end

#file '/etc/motd' do
#  content "This server is my property
#  HOSTNAME: #{node['hostname']} 
#  IPADDRESS: #{node['ipaddress']}
#  CPU: #{node['cpu']['0']['mhz']}
#  MEMORY: #{node['memory']['total']}
#  "
#  action :create
#  owner 'root'
#  group 'root'
#end
