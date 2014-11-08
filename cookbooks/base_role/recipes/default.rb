#
# Cookbook Name:: base_role
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

directory "/etc/profile.d" do
  owner "root"
  group "wheel"
  mode "0755"
  action :create
end
