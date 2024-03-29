class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    names_list = []
    @items.each do |i|
      names_list.append(i[:name])
    end
    return names_list.sort
  end

  def cheap
    return @items.select{ |item| item[:price] < 30  }
  end

  def out_of_stock
    stock_qty = 0
    stock_qty = @items.select{ |item| item[:quantity_by_size].none? }
    return stock_qty
  end


  def stock_for_item(name)

    in_stock_qtys = 0

    @items.each do |item|
      if item[:name] == name
        # puts item
        # puts item[:name]
        # puts item[:quantity_by_size][:s]
      in_stock_qtys = item[:quantity_by_size]
      end
    end

    # puts in_stock_qtys
    return in_stock_qtys
  end


  def total_stock
    total_in_stock = 0
    @items.each do |item|
      total_in_stock += item[:quantity_by_size].values.sum
    end
    total_in_stock
  end

  private
  attr_reader :items
end

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).item_names

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).cheap

# # => [
# #      {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
# #      {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# #    ]

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).out_of_stock

# #=> [{price: 50.00, name: "Red Short Skirt", quantity_by_size: {}}]

BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
]).stock_for_item("Black Short Skirt")

#=> {s: 1, xl: 4}

# BoutiqueInventory.new([
#   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
#   {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
#   {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
#   {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
# ]).total_stock

# #=> 36

