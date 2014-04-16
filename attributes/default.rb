## Cookbook Name:: openssl-fips
## Attributes:: default

fips_version = '2.0.5'
default['openssl_fips']['fips']['version']  = fips_version
default['openssl_fips']['fips']['url']      = "https://www.openssl.org/source/openssl-fips-#{fips_version}.tar.gz"
default['openssl_fips']['fips']['checksum'] = '54ad8102f73488e9f34d3143b55866a147582810'

openssl_version = '1.0.1g'
default['openssl_fips']['openssl']['version'] = openssl_version
default['openssl_fips']['openssl']['prefix']  = "/opt/openssl-#{openssl_version}"
default['openssl_fips']['openssl']['url'] = "https://www.openssl.org/source/openssl-#{openssl_version}.tar.gz"
default['openssl_fips']['openssl']['checksum'] = 'b28b3bcb1dc3ee7b55024c9f795be60eb3183e3c'
default['openssl_fips']['openssl']['configure_flags'] = %W[ shared ]
