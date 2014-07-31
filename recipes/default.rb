#
# Cookbook Name:: jfw-dotfiles-cookbook
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

remote_file "#{node['user']['home']}/.bashrc" do
  mode "0755"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.bashrc"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.bash_profile" do
  mode "0755"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.bash_profile"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.editorconfig" do
  mode "0644"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.editorconfig"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.gemrc" do
  mode "0644"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.gemrc"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.perltidyrc" do
  mode "0644"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.perltidyrc"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.profile" do
  mode "0755"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.profile"
  owner node['user']['name']
  group node['user']['group']
end


template "#{node['user']['home']}/.gitconfig" do
  source "gitconfig.erb"
  mode "0644"
  owner node['user']['name']
  group node['user']['group']
end

remote_file "#{node['user']['home']}/.vimrc" do
  mode "0644"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.vimrc"
  owner node['user']['name']
  group node['user']['group']
end

