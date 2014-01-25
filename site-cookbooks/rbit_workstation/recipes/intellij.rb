

remote_file ::File.join(Chef::Config[:file_cache_path], node['intellij']['file_name']) do
  source node['intellij']['file_url']
  action :create_if_missing
end


bash 'intellij_install' do
  code <<-EOH
tar -xvf #{node['intellij']['file_name']} --transform=s/#{node['intellij']['directory']}/#{node['intellij']['install_directory']}/ -C #{node['intellij']['install_prefix']}
  EOH

  cwd Chef::Config[:file_cache_path]
  action :run

  not_if do
    ::File.directory? ::File.join(node['intellij']['install_prefix'], node['intellij']['install_directory'])
  end
end


template node['intellij']['desktop_file'] do
  source 'intellij.desktop.erb'
  owner 'root'
  group 'root'
  mode 0644

  variables node['intellij']

  only_if do
    node['intellij']['desktop_file']
  end
end