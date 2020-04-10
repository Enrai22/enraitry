require "./menu"

class Food < Menu
  attr_accessor :calorie

  def initialize(name:,price:,calorie:)
    super(name: name,price: price)
    self.calorie=calorie
  end

  def info
    return "#{self.name} #{self.price}円(#{self.calorie}kc)"
  end

  def calorie_info(count)
    total_cal=self.calorie*count
#    return "合計#{total_cal}kcalです"
    return total_cal
  end
end
