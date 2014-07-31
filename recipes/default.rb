#
# Cookbook Name:: jfw-dotfiles-cookbook
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

remote_file "#{node['user']['home']}/.bashrc" do
  mode "0700"
  source "https://raw.githubusercontent.com/jfwilkus/dotfiles/master/.bashrc"
  owner node['user']['name']
  group node['user']['group']
end
