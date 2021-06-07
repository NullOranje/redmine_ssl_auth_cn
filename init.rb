require 'redmine'
require 'redmine_ssl_auth_cn/account_controller_patch'

Redmine::Plugin.register :redmine_ssl_auth_cn do
  name 'Redmine SSL Auth CN plugin'
  author 'Nick McKinney'
  description 'Enable authentication using SSL client certificates where username=[certificate common name].  Forked from code by Steve Simpson'
  url 'https://github.com/NullOranje/redmine_ssl_auth_cn'
  author_url 'http://github.com/NullOranje/'  
  version '1.0.4'
  settings default: {'allow_username_password' => 'true', 'http_header' => "X-Proxy-Forwarded-CN"}, partial: 'settings/redmine_ssl_auth_cn'
end

Rails.configuration.to_prepare do
  AccountController.prepend(RedmineSSLAuthCn::AccountControllerPatch)
end
