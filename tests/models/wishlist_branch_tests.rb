require 'minitest/autorun'
require 'rack/test'
require './app'

class Wishlist_branchTests < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_made_by
  #   wishlist_branch = Wishlist_branch.new
  #   assert_equal wishlist_branch.made_by, 'Acme Corp.'
  # end
end
