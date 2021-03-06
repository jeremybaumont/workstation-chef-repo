#
# Cookbook Name:: iterm2
# Recipe:: default
#
# Copyright 2011-2012, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

unless ::File.directory?("/Applications/iTerm.app")
  remote_file "#{Chef::Config[:file_cache_path]}/iTerm2#{node['iterm2']['version']}.zip" do
    source "http://www.iterm2.com/downloads/#{node['iterm2']['beta_or_stable']}/iTerm2#{node['iterm2']['version']}.zip"
    checksum node['iterm2']['checksum']
  end

  execute "untar iTerm2" do
    command "unzip #{Chef::Config[:file_cache_path]}/iTerm2#{node['iterm2']['version']}.zip"
    cwd "/Applications"
    not_if { File.directory?("/Applications/iTerm.app") }
  end
end

mac_os_x_plist_file "com.googlecode.iterm2.plist" do
  cookbook node['iterm2']['plist_cookbook']
  ignore_failure true
end

include_recipe "iterm2::tmux" if node['iterm2']['tmux_enabled']
