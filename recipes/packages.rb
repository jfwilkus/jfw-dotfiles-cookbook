
if platform_family?('mac_os_x')
  include_recipe 'homebrew'

  node['homebrew']['formulas'].each do |package|
    package package do
      action [:install, :upgrade]
    end
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
