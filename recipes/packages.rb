
if platform_family?('mac_os_x')
  include_recipe 'homebrew'

  node['homebrew']['formulas'].each do |package|
    package package do
      action :install
    end
  end

  execute "brew upgrade" do
    command "/usr/local/bin/brew upgrade"
    action :run
    user node['user']['name']
  end

  execute "brew cleanup" do
    command "/usr/local/bin/brew cleanup"
    action :run
    user node['user']['name']
  end

end

if platform_family?('rhel')
  include_recipe 'yum'
  include_recipe 'yum-epel'

  node['yum']['packages'].each do |package|
    yum_package package do
      action [:install, :upgrade]
    end
  end
end
