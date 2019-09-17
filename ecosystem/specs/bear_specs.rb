require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test
	def setup
		@bear = Bear.new("Bearasaurus", "Super Grizzly")
	end

  def test_bear_has_name()
		assert_equal("Bearasaurus", @bear.bear_name)
	end

  def test_bear_has_type()
		assert_equal("Super Grizzly", @bear.bear_type)
	end

  def test_bear_has_empty_stomach()
		assert_equal(0, @bear.bear_stomach)
	end

  def test_can_add_fish()
    @bear.add_fish(@fish1)
    assert_equal(1, @bear.bear_stomach())
  end

  def test_get_total_fishes_in_stomach()
    @bear.add_fish(@fish1)
    @bear.add_fish(@fish1)
    @bear.add_fish(@fish1)

    assert_equal(3, @bear.get_total_fishes_in_stomach())
  end

end
