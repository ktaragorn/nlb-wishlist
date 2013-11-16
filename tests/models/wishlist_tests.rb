require 'minitest/autorun'
require 'rack/test'
require './app'

class WishlistTests < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_made_by
  #   wishlist = Wishlist.new
  #   assert_equal wishlist.made_by, 'Acme Corp.'
  # end
end
