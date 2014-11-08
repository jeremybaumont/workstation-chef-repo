name             'mac_os_x_role'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures mac_os_x_role'
long_description 'Installs/Configures mac_os_x_role'
version          '0.1.0'

%w{ base_role homebrew build-essential }.each do | cookbook |
	depends cookbook
end
