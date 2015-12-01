def stock_picker (stock_prices)

  buy_index = 0
  sell_index = 0
  max_profit = 0

  stock_prices.each_with_index do |buy, i|
    stock_prices[(i+1)..-1].each_with_index do |sell, j|
      if (sell - buy) > max_profit
        sell_index = j + (i + 1)
        buy_index = i

        max_profit = sell - buy
      end
    end
  end

  
  result = []
  result.push(buy_index, sell_index)

end