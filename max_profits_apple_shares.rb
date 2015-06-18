=begin
I have an array stock_prices_yesterday where:

The indices are the time in minutes past trade opening time, which was 9:30am local time.
The values are the price in dollars of Apple stock at that time.
For example, the stock cost $500 at 10:30am, so stock_prices_yesterday[60] = 500.

Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).
=end



def get_max_price(stocks_array)
  local_min = stocks_array[0]
  local_max = stocks_array[1]
  max_profit = local_max - local_min

  stocks_array[1..-1].each do |price|
    if local_max == nil || price > local_max
      local_max = price
      profit = local_max - local_min
      max_profit = profit if profit > max_profit
    elsif price < local_min
      local_min = price
      local_max = nil
    end
  end
  return max_profit
end

monday_prices = [1,2,3,4,5,6]
tuesday_prices = [50,6,123,3,434,234234]
wednesday_prices = [2,5,2,1,90]
thursday_prices = [13,2,33134,4,5324,6]
friday_prices = [1234234,2,433,4,53,2346]


p get_max_price(monday_prices)
p get_max_price(tuesday_prices)
p get_max_price(wednesday_prices)
p get_max_price(thursday_prices)
p get_max_price(friday_prices)
