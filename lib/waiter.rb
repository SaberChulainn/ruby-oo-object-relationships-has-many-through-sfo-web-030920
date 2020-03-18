class Waiter
  
  attr_accessor :name, :experience
  @@all = []
  def initialize(name, experience)
    @name = name
    @experience = experience
    @@all << self
  end

  def self.all
    @@all 
  end
  
  def new_meal(customer, total, tip)
    newmeal = Meal.new(self, customer, total, tip)
  end
  
  def meals
    test = Meal.all.select{|meal| meal.waiter == self}
    test
  end
  
  def best_tipper
    tipper = meals.max do {meal1, meal2}
      meal1 <=> meal2
    end
    tip.customer
    
  end
end