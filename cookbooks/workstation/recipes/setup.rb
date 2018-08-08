package 'tree' do 
 action :install
end 



package 'ntp' do 
 action :install
end 

template '/etc/motd' do
 source 'motd.erb'
 action :create
 variables(
 :firstname => 'Amit',
 :lastname  => 'Vashist'
 )
 owner 'root'
 group 'root'
end


group 'chef-test' do
end

user 'user1' do 
comment 'Chef Test User'
shell '/bin/bash'
group 'chef-test'
end


group 'amitvashist7' do
action :modify
members 'user1'
append true
end




