class Product
attr_accessor :name, :price

def initialize(name:, price:)
  self.name = name
  self.price = price
end

def info
  return "#{self.name} #{self.price}円"
end

def get_total_price(count)
  total_price = self.price * count
  if count >= 3
    total_price *= 0.9
  end
  return total_price
  end
end
