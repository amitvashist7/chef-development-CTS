directory node['main']['doc_root'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end



template '/etc/httpd/conf/httpd.conf' do 
source 'httpd.erb'
action :create
variables( 
 {:doc_root => node['main']['doc_root'],:doc_dir => node['main']['doc_dir']}
)
notifies :restart, 'service[httpd]', :immediately
end
