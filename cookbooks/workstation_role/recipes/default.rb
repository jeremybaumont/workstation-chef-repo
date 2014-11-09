#
# Cookbook Name:: workstation_role
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
include_recipe "base_role"
include_recipe "mac_os_x_role"
include_recipe "git"
include_recipe "ruby_build"
include_recipe "rbenv::user"
include_recipe "users"
include_recipe "workstation"
include_recipe "mac_os_x"
include_recipe "mac_os_x::settings"
include_recipe "mac_os_x::firewall"
include_recipe "iterm2"
