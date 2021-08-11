class Solution {
    func bruteForceTwoSum(nums: [Int], target: Int) -> [Int] {
        for i in 0..<nums.count {
            print(i)
            let x = nums[i]
            for j in 0..<nums.count where j != i{
                if x + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    func twoSumBinarySearch(nums: [Int], target: Int) -> [Int] {
        var dic = [Int: Int]()
        for j in nums.indices {
            dic[nums[j]] = j
        }
        for i in nums.indices {
            let compliment = target - nums[i]
            var tempArray = nums
            tempArray.remove(at: i)
            var hasCompliment = self.binarySearch(nums: nums, target: compliment)
            if hasCompliment == true {
                print("\(nums[i]) + \(compliment) = \(target)")
                if let z = dic[compliment] {
                    return [i , z]
                    
                }
            }
        }
        return []
    }
    func binarySearch(nums: [Int], target: Int) -> Bool {
        guard nums.count > 0 else {
            return false
        }
        let minIndex = 0
        let maxIndex = nums.count - 1
        let midIndex = maxIndex / 2
        let midValue = nums[midIndex]
        
        if nums[minIndex] > 0 && nums[maxIndex] > 0{
            if target < nums[minIndex] || target > nums[maxIndex] {
                print("\(target) doesn't exist in \(nums) ")
                return false
            }
        }
        
        if target > nums[midIndex] {
            print("target > nums[midValue]")
            let slice = Array(nums[midIndex + 1...maxIndex])
            print(slice)
            return binarySearch(nums: slice, target: target)
        }

        if target < midValue {
            print("\(target) < \(midValue)")
            let slice = Array(nums[minIndex...midIndex])
            return binarySearch(nums: slice, target: target)
        }
        
        if target == midValue {
            return true
        }
        
        return false
    }
}

let numbers = [-1,-2,-3,-4,-5]
var x = Solution()

x.twoSumBinarySearch(nums: numbers, target:-8)

