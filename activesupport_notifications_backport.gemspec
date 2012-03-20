## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'activesupport_notifications_backport'
  s.version           = '0.0.4'
  s.date              = '2012-03-20'
  s.rubyforge_project = 'activesupport_notifications_backport'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "ActiveSupport::Notifications backported for Rails 2.3"
  s.description = "ActiveSupport::Notifications backported for Rails 2.3"

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Rick Olson"]
  s.email    = 'technoweenie@gmail.com'
  s.homepage = 'http://github.com/technoweenie/activesupport_notifications_backport'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  s.add_dependency 'activesupport', '< 3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'test-unit'

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Rakefile
    activesupport_notifications_backport.gemspec
    lib/active_support/log_subscriber.rb
    lib/active_support/log_subscriber/test_helper.rb
    lib/active_support/notifications.rb
    lib/active_support/notifications/fanout.rb
    lib/active_support/notifications/instrumenter.rb
    lib/activesupport_notifications_backport.rb
    test/abstract_unit.rb
    test/log_subscriber_test.rb
    test/notifications_test.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ %r{^test/*/.+\.rb} }
end
