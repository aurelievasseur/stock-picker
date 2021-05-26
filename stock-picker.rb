def stock_picker(arr)
    # return a pair of days representing the best day to buy and the best day to sell 
    # [best_buy, best_sell]
    # best_buy has to be before best_sell 
    max_diff = 0
    day_to_sell = nil
    day_to_buy = nil
    arr.each_with_index do
        |value_buy, index_buy|
        arr.each_with_index do
            |value_sell, index_sell|
            if index_buy < index_sell 
                diff = value_sell - value_buy
                if diff > max_diff
                    max_diff = diff
                    day_to_buy = index_buy
                    day_to_sell = index_sell
                end
            end

        end
    end
    p [day_to_buy, day_to_sell]


end
stock_picker([17,3,6,9,15,8,6,1,10])

