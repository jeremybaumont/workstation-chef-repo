name             'workstation_role'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures workstation_role'
long_description 'Installs/Configures workstation_role'
version          '0.1.0'

%w{ base_role mac_os_x_role git rbenv ruby_build users workstation mac_os_x iterm2 }.each do | cookbook |
  depends cookbook
end
