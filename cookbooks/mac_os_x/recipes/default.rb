#
# Cookbook Name:: mac_os_x
# Recipe:: default
#
# Author:: Joshua Timberman <opensource@housepub.org>
# Copyright:: Copyright (c) 2011, Joshua Timberman
# License:: Apache License, Version 2.0
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

# Disable startup sound
flag_filename = ".disabled.startup.sound"
flag_filepath = "#{Chef::Config['file_cache_path']}/#{flag_filename}"

bash 'disable_startup_sound' do
  user "root"
  cwd ::File.dirname(flag_filepath)
  code <<-EOH
    nvram SystemAudioVolume=%80
    EOH
  not_if { ::File.exists?(flag_filepath) }
end
