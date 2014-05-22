## Cookbook Name:: openssl-source
## Attributes:: default

openssl_version = '1.0.1g'
default['openssl_source']['openssl']['version'] = openssl_version
default['openssl_source']['openssl']['prefix']  = "/opt/openssl-#{openssl_version}"
default['openssl_source']['openssl']['url'] = "https://www.openssl.org/source/openssl-#{openssl_version}.tar.gz"
default['openssl_source']['openssl']['checksum'] = 'b28b3bcb1dc3ee7b55024c9f795be60eb3183e3c'
default['openssl_source']['openssl']['configure_flags'] = %W[ shared ]
