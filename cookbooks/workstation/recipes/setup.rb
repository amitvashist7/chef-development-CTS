package 'tree' do 
 action :install
end 



package 'ntp' do 
 action :install
end 

file '/etc/motd' do
 content 'This file is being manged by Chef with Git'
 owner 'root'
 group 'root'
end

