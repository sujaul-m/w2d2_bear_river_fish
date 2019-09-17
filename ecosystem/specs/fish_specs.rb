require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class TestFish < MiniTest::Test
	def setup
		@fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")
    @fish4 = Fish.new("Gill")
    @fish5 = Fish.new("Nigel")
    @fish6 = Fish.new("Mr. Ray")
	end

  def test_nemo_is_in_array()
	   assert_equal("Nemo", @fish1.name())
	end

  def test_dory_is_in_array()
	   assert_equal("Dory", @fish2.name())
	end

  def test_marlin_is_in_array()
	   assert_equal("Marlin", @fish3.name())
	end

  def test_mr_ray_is_in_array()
     assert_equal("Mr. Ray", @fish6.name())
  end
end
