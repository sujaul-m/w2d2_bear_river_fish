require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")
    @fish4 = Fish.new("Gill")
    @fish5 = Fish.new("Nigel")
    @fish6 = Fish.new("Mr. Ray")
    @fish7 = Fish.new("Crush")
    @fish8 = Fish.new("Squirt")
    @fish9 = Fish.new("Bloat")
    @fish10 = Fish.new("Gurgle")
    fishes = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]
    @river = River.new("Amazing Amazon", fishes)
  end

  def test_river_has_name()
    assert_equal("Amazing Amazon", @river.river_name)
  end

  def test_river_fish_count()
    assert_equal(6, @river.fish_count())
  end

  def test_can_add_fish_to_river
    @river.add_fish(@fish7)
    assert_equal(7, @river.fish_count())
  end

  def test_can_add_multiple_fish_to_river
    @river.add_fish(@fish7)
    @river.add_fish(@fish8)
    @river.add_fish(@fish9)
    @river.add_fish(@fish10)
    assert_equal(10, @river.fish_count())
  end

  def test_add_new_fish
    new_fish = Fish.new("Jacques")
    @river.add_fish(new_fish)
    assert_equal(7, @river.fish_count())
  end

  def test_can_find_fish_by_name
    fish = @river.find_fish_by_name("Dory")
    assert_equal("Dory", fish.name)
  end

  def test_cant_find_fish_by_name
    fish = @river.find_fish_by_name("Spider")
    assert_nil(nil, fish)
  end

  def test_can_remove_fish_from_river()
    @river.remove_fish(@fish1)
    assert_equal(5, @river.fish_count())
  end

  # def test_can_bear_eat_fish()
  #   @river.bear_eats_fish(@fish1)
  #   # assert_equal(1, @bear.bear_stomach())
  #   # assert_equal(5, @river.fish_count())
  # end

end
