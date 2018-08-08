remote_file '/var/www/html/mario.jpg' do
source 'https://banner2.kisspng.com/20171218/cb3/mario-png-5a37d12acbdad3.967879731513607466835.jpg'
end



template '/var/www/html/index.html' do 
source 'index.erb'
action :create
variables( 
 :firstname => 'GCP',
 :lastname => 'Cloud'
)
end


cookbook_file '/var/www/html/abc.html' do
 source 'abc.html'
end


