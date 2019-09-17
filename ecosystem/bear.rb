class Bear

  attr_reader :bear_name, :bear_type, :stomach

  def initialize(name, type)
    @bear_name = name
    @bear_type = type
    @stomach = []
  end

  def bear_stomach()
    return @stomach.size()
  end

  def add_fish(fish)
    @stomach.push(fish)
  end

  def get_total_fishes_in_stomach()
    total = 0
    for fish in @stomach
      total += 1
    end
    return total
  end

  # def eat_fish(fish)
  #   add_fish(fish)
  #   # bear_stomach()
  # end

end
