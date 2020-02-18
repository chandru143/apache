package 'httpd' do
 action :install
end

template '/var/www/html/index.html' do
 source 'index.html.erb'
 owner "root"
 group "root"
 mode "0755"
 variables(
 :name => 'chandru'
)
end

service 'httpd' do 
 action [:enable, :start]
end
