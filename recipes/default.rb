#
# Cookbook Name:: minifu
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

include_recipe 'minifu::home'
include_recipe 'minifu::sudoers'
include_recipe 'minifu::packages'
