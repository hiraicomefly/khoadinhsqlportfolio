a = [7,1,5,3,6,4,1]

def price(a):
    profit = 0
    if a[1] > a[0]:
      profit = a[1] - a[0]
      buy_index = 0
      sell_index = 1
    else:
      buy_index = 1
    for i in range(2, len(a)):
      if a[i] >= a[buy_index]:
        profit_temp = a[i] - a[buy_index]
        if profit_temp > profit:
          profit = profit_temp
          sell_index = i
      else:
        buy_index = i
    # Result.
    print('Profit:', profit)
    if profit > 0:
      print('Buy index:', buy_index)
      print('Sell index:', sell_index)

price(a)
