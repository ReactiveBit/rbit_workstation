
include_recipe 'apt'

apt_repository 'opera' do
  uri 'http://deb.opera.com/opera/'
  distribution 'stable'
  components %w(non-free)
  key 'http://deb.opera.com/archive.key'
  action :add
end

package 'opera'