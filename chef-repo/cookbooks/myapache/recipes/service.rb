service 'httpd' do action [ :enable, :start ] 
#subscribes :restart, 'template[/var/www/html/index.html]', :immediately
end
