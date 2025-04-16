ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require 'webdrivers/chromedriver'
Webdrivers::Chromedriver.required_version = '114.0.5735.90'  # Version stable connue

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include Warden::Test::Helpers
  Warden.test_mode!
end

Capybara.save_path = Rails.root.join("tmp/capybara")
# Ajouter après la ligne Capybara.save_path
Capybara.default_max_wait_time = 30  # Augmenter à 30 secondes
