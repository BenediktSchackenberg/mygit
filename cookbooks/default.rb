gem_package "ruby-shadow" do
	action :install
end

user "TestUser" do
	comment "Test User"
	uid 10001
	gid "web"
	home "/home/webmin"
	shell "bin/bash"
	password "test123"
end


