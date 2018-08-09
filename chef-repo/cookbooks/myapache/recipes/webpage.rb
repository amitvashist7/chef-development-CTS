remote_file "#{node['main']['doc_root']}/mario.jpg" do
source 'https://banner2.kisspng.com/20171218/cb3/mario-png-5a37d12acbdad3.967879731513607466835.jpg'
end



template "#{node['main']['doc_root']}/index.html" do 
source 'index.erb'
action :create
variables( 
 :firstname => 'GCP',
 :lastname => 'Cloud',
 :doc_root =>"#{node['main']['doc_root'] }"
)
#notifies :restart, 'service[httpd]', :delayed
end


cookbook_file "#{node['main']['doc_root']}/abc.html" do
 source 'abc.html'
end


