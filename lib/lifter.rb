class Lifter
  attr_reader :name, :lift_total
@@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do|m|
      # binding.pry
      m.lifter == self
    end
  end

  def gyms
    memberships.collect do|m|
      m.gym
    end
  end

  def self.average_lift_total
    average_total = []
    Membership.all.collect do|m|
      average_total << m.lifter.lift_total 
    end
    average_total.inject{ |sum, el| sum + el }.to_f / average_total.size
  end

  def my_cost
    memberships.select do|m|
      return m.cost
    end
  end

  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end

  

end
