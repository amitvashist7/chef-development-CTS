template '/var/www/html/index.html' do 
source 'index.erb'
action :create
variables( 
 :firstname => 'GCP',
 :lastname => 'Cloud'
)
end

