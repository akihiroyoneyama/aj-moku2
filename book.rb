require './product'

  class Book < Product
    attr_accessor :page_num
    def initialize(name:, price:, page_num:)
      super(name: name, price: price)
      self.page_num =page_num
    end

    def info
      return "#{self.name} #{self.price}円 (#{self.page_num}ページ)"
    end
  end
