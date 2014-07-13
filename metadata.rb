name             'apt-sources-switch'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'df1228@gmail.com'
license          'All rights reserved'
description      'Installs/Configures apt-sources-switch'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends "ubuntu"

%w{ debian ubuntu }.each do |os|
  supports os
end
