//https://leetcode.com/problems/product-of-array-except-self/

class Solution {
//    Brute force approach
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var tempArray:[Int] = []
        for i in nums.indices{
            var x:Int = 1
            for j in nums.indices where j != i  {
                x = x * nums[j]
                if j == nums.count - 1 {
                    tempArray.append(x)
                }
                if i == nums.count - 1 && j == nums.count - 2{
                    tempArray.append(x)
                }
            }
        }
        return tempArray
    }
//    Approach 1: Left and Right product lists
    func nameproductExceptSelfLeftRight(_ nums: [Int]) -> [Int] {
        var answer = Array(repeating: 1, count: nums.count)
        var prod = 1
        for i in answer.indices {
            answer[i] = prod
            prod = prod * nums[i]
        }
        prod = 1
        for i in (0..<nums.count).reversed() {
            print(i)
            answer[i] = answer[i] * prod
            prod = prod * nums[i]
        }
        return answer
    }
}

var x = Solution()
var nums = [1,2,3,4]
//var nums = [4,5,1,8,2,10,6]
x.nameproductExceptSelfLeftRight(nums)
