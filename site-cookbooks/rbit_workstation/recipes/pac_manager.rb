
# Fix dependencies for Linux Mint
execute 'apt-fix-dependencies' do
  command 'apt-get -f install'
end

remote_file '/tmp/pac-4.5.3.4-all.deb' do
  source 'http://kent.dl.sourceforge.net/project/pacmanager/pac-4.0/pac-4.5.3.4-all.deb'
  mode 0644
end

dpkg_package 'pac_manager' do
  source '/tmp/pac-4.5.3.4-all.deb'
  action :install
end
