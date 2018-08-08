#
# Cookbook:: mymyapache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
node.default['main']['doc_root'] = "/var/www/html/CTS"
node.default['main']['doc_dir'] = "/CTS/"


include_recipe 'myapache::package'
include_recipe 'myapache::config'
include_recipe 'myapache::webpage'
include_recipe 'myapache::service'
