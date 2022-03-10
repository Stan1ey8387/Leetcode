import Foundation

fileprivate class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0

        for index in 1..<prices.count {
            let price = prices[index]
            let previousPrice = prices[index - 1]

            if price > previousPrice {
                profit += price - previousPrice
            }
        }
        return profit
    }
}

var array = [7,1,5,3,6,4]
let solution = Solution().maxProfit(array)
print(solution)

