require 'redmine'
require 'ext/account_controller'

Redmine::Plugin.register :redmine_ssl_auth_cn do
  name 'Redmine SSL Auth CN plugin'
  author 'Nick McKinney'
  description 'Enable authentication using SSL client certificates where username=[certificate common name].  Forked from code by Steve Simpson'
  url 'https://github.com/NullOranje/redmine_ssl_auth_cn'
  author_url 'http://github.com/NullOranje/'  
  version '1.0.2'
end
