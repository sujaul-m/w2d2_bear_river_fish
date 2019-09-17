class River

  attr_reader :river_name

  def initialize(river_name, fishes)
    @river_name = river_name
    @how_many_fishes = fishes
  end

  def fish_count()
    return @how_many_fishes.size()
  end

  def add_fish(fish)
    @how_many_fishes.push(fish)
  end

  def find_fish_by_name(name)
    for fish in @how_many_fishes
      if fish.name == name
        return fish
      end
    end
    return nil
  end

  def remove_fish(fish)
    @how_many_fishes.delete(fish)
  end

  # def bear_eats_fish(fish)
  #   @bear.eat_fish(fish)
  #   remove_fish(fish)
  #   # fish_count()
  # end

end
