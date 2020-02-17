package 'httpd' do
 action :install
end

file '/var/www/html/index.html' do
 action :create
 content "This is my second page"
 owner "root"
 group "root"
 mode "0755"
end

service 'httpd' do 
 action [:enable, :start]
end
