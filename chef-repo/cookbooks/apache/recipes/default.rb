#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'apache::package'
include_recipe 'apache::webpage'
include_recipe 'apache::service'
#include_recipe 'workstation::setup'
