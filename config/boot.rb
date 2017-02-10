ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'rails/commands/server'

# Run on a distinct port, to avoid clashing with other govuk-frontend apps
# http://stackoverflow.com/questions/18103316/how-to-change-default-port-of-a-rails-4-app/19586744#19586744
module DefaultOptions
  def default_options
    super.merge!(Port: 3003)
  end
end

Rails::Server.send(:prepend, DefaultOptions)
