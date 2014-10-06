name             'rsc_mysql_aws'
maintainer       'RightScale Inc'
maintainer_email 'premium@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rsc_mysql_aws'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends "rightscale"
depends "dns"
depends "rs-mysql"

recipe "rsc_mysql_aws::default"


attribute 'rs-mysql/dns/user_key',
:display_name => 'DNS User Key',
:description => 'The user key to access/modify the DNS records.',
:required => 'optional',
:recipes => ['rsc_mysql_aws::default']

attribute 'rs-mysql/dns/secret_key',
:display_name => 'DNS Secret Key',
:description => 'The secret key to access/modify the DNS records.',
:required => 'optional',
:recipes => ['rsc_mysql_aws::default']
