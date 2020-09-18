#Project created for The Odin Project

stocks = [6, 15, 6, 17, 25, 7, 3, 47, 18]


def stock_picker(prices)
  buy = 0
  sell = 0
  best_return = 0
  
  combinations = prices.combination(2).to_a
  combinations.each do |e|
    difference = (e[1] - e[0])
    if difference > best_return
      best_return = difference
      buy = prices.index(e[0])
      #puts "Buy is #{buy}."
      sell = prices.index(e[1])
      #puts "Sell is #{sell}."
    end
  end

  if best_return <= 0
    print "Don't bother, this one's a loser."
  else print  "The best day to buy is day #{buy} and the best day to sell is day #{sell}."
  end
end

stock_picker(stocks)