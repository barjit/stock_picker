def stock_picker (stock_prices)

  buy_index = 0
  sell_index = 0
  max_profit = 0

  stock_prices.each do |i|
    stock_prices.each do |j|
      if j - i > max_profit
        buy_index = i
        sell_index = j
        max_profit = i - j
      end
    end
  end

  return "Maximum profit is #{max_profit}, buy on day #{buy_index}, sell on day #{sell_index}"
  

end