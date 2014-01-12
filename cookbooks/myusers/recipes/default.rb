#
# Cookbook Name:: myusers
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
gem_package "ruby-shadow" do
  action :install
end
 
# Create a unix group
#group "webadmin" do
#     gid 10001
#end
 
# To create an encrypted password use the following:
# openssl passwd -1 "theplaintextpassword"
 
# Create a unix user
user "walter" do
     comment "Web Administrator"
     #uid 10001
     #gid "web"
     home "/home/walter"
     shell "/bin/bash"
     password "$1$2QYepl2p$.7ckFmevVtpBZpokJCuSd."
end                                                                       

