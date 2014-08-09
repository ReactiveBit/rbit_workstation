
# Fix dependencies for Linux Mint
execute 'apt-fix-dependencies' do
  command 'apt-get -f -y install'
end

remote_file '/tmp/pac-4.5.4-all.deb' do
  source 'http://downloads.sourceforge.net/project/pacmanager/pac-4.0/pac-4.5.4-all.deb?r=&ts=1407537011&use_mirror=netcologne'
  mode 0644
end

dpkg_package 'pac_manager' do
  source '/tmp/pac-4.5.4-all.deb'
  action :install
end
