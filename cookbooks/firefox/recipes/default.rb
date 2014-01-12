# Cookbook Name:: firefox
# Recipe:: default
#
# Copyright 2012, Webtrends, Inc.
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

if platform?('windows')
  windows_package 'Mozilla Firefox 25.0.1 (x86 de)' do
    source node['firefox']['http_url']
    installer_type :custom
    options '-ms'
    action :install
  end
else
  Chef::Log.warn('Firefox can only be installed on the Windows platform using this cookbook.')
end

windows_package 'PuTTY version 0.60' do
  source 'http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.63-installer.exe'
  installer_type :inno
  action :install
end


windows_package '7-Zip 9.20 (x64 edition)' do
  source 'http://downloads.sourceforge.net/sevenzip/7z920-x64.msi'
  action :install
end


