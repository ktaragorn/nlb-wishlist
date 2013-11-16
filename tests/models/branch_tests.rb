require 'minitest/autorun'
require 'rack/test'
require './app'

class BranchTests < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # def test_made_by
  #   branch = Branch.new
  #   assert_equal branch.made_by, 'Acme Corp.'
  # end
end
