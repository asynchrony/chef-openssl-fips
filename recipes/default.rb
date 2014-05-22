## Cookbook Name:: openssl_source
## Recipe:: default

src_dirpath  = "#{Chef::Config['file_cache_path'] || '/tmp'}/openssl-#{node['openssl_source']['openssl']['version']}"
src_filepath  = "#{src_dirpath}.tar.gz"
remote_file node['openssl_source']['openssl']['url'] do
  source   node['openssl_source']['openssl']['url']
  checksum node['openssl_source']['openssl']['checksum']
  path     src_filepath
  backup   false
end

execute 'unarchive_openssl' do
  cwd     ::File.dirname(src_filepath)
  command "tar zxf #{::File.basename(src_filepath)} -C #{::File.dirname(src_filepath)}"
  not_if  { ::File.directory?(src_dirpath) }
end

configure_flags = node['openssl_source']['openssl']['configure_flags'].map { |x| x }
configure_flags << "--prefix=#{node['openssl_source']['openssl']['prefix']}"

execute 'compile_openssl_source' do
  cwd  src_dirpath
  command <<-EOH
    ./config #{configure_flags.join(' ')} && make && make install
  EOH
end
