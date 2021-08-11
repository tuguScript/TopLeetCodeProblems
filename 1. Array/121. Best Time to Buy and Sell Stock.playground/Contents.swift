
class Solution {
    func bruteForceMaxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        for i in 0..<prices.count {
            let x = prices[i]
            for j in 0..<prices.count where i < j {
                let profit = prices[j] - prices[i]
                if profit > maxProfit {
                    maxProfit = profit
                }
            }
        }
        return maxProfit
    }
    func onePassMaxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else { return 0 }
        var profit = 0, buyDay = 0
        for i in prices.indices.dropFirst() {
            buyDay = max(0, buyDay + prices[i] - prices[i-1])
            profit = max(buyDay, profit)
        }
        return profit
    }
}

var x = Solution()
var prices = [1, 2]
var prices1 = [7,1,5,3,6,4]
x.onePassMaxProfit(prices)
