class Gym
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do|m|
      m.gym == self
    end
  end

  def lifters
    memberships.collect do|m|
      m.lifter
    end
  end

  def lifter_names
    lifters.collect do|l|
      l.name
    end
  end

  def combined_lift_total
    lifters.collect { |l| l.lift_total }.sum
  end

end
