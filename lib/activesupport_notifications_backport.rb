require 'active_support/version'
if ActiveSupport::VERSION::MAJOR > 2
  raise "Can't use this with Rails 3+, silly!"
end

module ActiveSupportNotificationsBackport
  VERSION = "0.0.3"
end

require 'active_support/secure_random'
require File.expand_path('../active_support/notifications', __FILE__)
require File.expand_path('../active_support/log_subscriber', __FILE__)
