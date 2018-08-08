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

