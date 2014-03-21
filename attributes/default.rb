## Cookbook Name:: openssl-fips
## Attributes:: default

fips_version = '2.0.5'
default['openssl_fips']['fips']['version']  = fips_version
default['openssl_fips']['fips']['url']      = "https://www.openssl.org/source/openssl-fips-#{fips_version}.tar.gz"
default['openssl_fips']['fips']['checksum'] = '54ad8102f73488e9f34d3143b55866a147582810'

openssl_version = '1.0.1f'
default['openssl_fips']['openssl']['version'] = openssl_version
default['openssl_fips']['openssl']['prefix']  = "/opt/openssl-#{openssl_version}"
default['openssl_fips']['openssl']['url'] = "https://www.openssl.org/source/openssl-#{openssl_version}.tar.gz"
default['openssl_fips']['openssl']['checksum'] = '9ef09e97dfc9f14ac2c042f3b7e301098794fc0f'
default['openssl_fips']['openssl']['configure_flags'] = %W[ shared ]
