
if platform?('mac_os_x')
  sudoers_group = 'wheel'
else
  sudoers_group = 'root'
end

template '/etc/sudoers' do
  source 'sudoers.erb'
  owner 'root'
  group sudoers_group
  mode '0440'
end
