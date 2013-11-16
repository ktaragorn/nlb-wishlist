require 'minitest/autorun'
require 'rack/test'
require './app'

class BookTests < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_made_by
  #   book = Book.new
  #   assert_equal book.made_by, 'Acme Corp.'
  # end
end
