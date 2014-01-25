
default['intellij']['version'] = '13.0.1'

# Name of IntelliJ directory inside tar.gz archive
default['intellij']['directory'] = 'idea-IC-133.331'
default['intellij']['file_name'] = "ideaIC-#{node['intellij']['version']}.tar.gz"
default['intellij']['file_url'] = "http://download.jetbrains.com/idea/#{node['intellij']['file_name']}"
default['intellij']['install_directory'] = 'intellij'
default['intellij']['install_prefix'] = '/opt'
default['intellij']['desktop_file'] = '/usr/share/applications/intellij.desktop'