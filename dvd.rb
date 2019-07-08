require './product'

  class Dvd < Product
    attr_accessor :r_time
    def initialize(name:, price:, r_time:)
     super(name: name, price: price)
     self.r_time =r_time
  end

  def info
    return "#{self.name} #{self.price}円 (#{self.r_time}分)"
  end

  def r_time_info
    return "#{self.name}の再生時間は#{self.r_time}分です"
  end
end
