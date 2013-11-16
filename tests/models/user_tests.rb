require 'minitest/autorun'
require 'rack/test'
require './app'

class UserTests < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_made_by
  #   user = User.new
  #   assert_equal user.made_by, 'Acme Corp.'
  # end
end
