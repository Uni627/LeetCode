//
//  day02.swift
//  LeetCode
//
//  Created by 陆小懒 on 2022/3/9.
//

import Foundation


/**
 题目：给定一个数组 prices ，其中 prices[i] 表示股票第 i 天的价格。
 
 描述：在每一天，你可能会决定购买和/或出售股票。你在任何时候 最多 只能持有 一股 股票。你也可以购买它，然后在 同一天 出售。
 返回 你能获得的 最大 利润 。
 
 
 解释：注意到上面的状态转移方程中，每一天的状态只与前一天的状态有关，而与更早的状态都无关，因此我们不必存储这些无关的状态，只需要将相邻的两个计算
 */

 public func maxProfit(_ prices: [Int]) -> Int {
    
    var total = 0
    
    let length = prices.count

    for i in 1..<length {
        
        total += max(0, prices[i] - prices[i-1])
        
    }
    
    
    return total
    
}


public func rotate(_ nums: inout [Int], _ k: Int) -> [Int] {
    let length = nums.count

    /*方法一：
    
    for _ in 0..<k {
        let first = nums[length - 1]
        nums.remove(at: length-1)
        nums.insert(first, at: 0)
    }
    return nums
    */
    
    /*方法二：使用额外的数组
    var newArr: [Int] = Array(repeating: 0, count: length)
    
    for i in 0..<length {
        
        newArr[(i+k)%length] = nums[i]
    }
    
    for i in 0..<length {
        nums[i] = newArr[i]
    }
    
    */
    
    var k = k
    
    k %= length
    
    reverse(&nums, start: 0, end: length - 1)
    
    reverse(&nums, start: 0, end: k - 1)
    
    reverse(&nums, start: k, end: length - 1)
    
    return nums
}


private func reverse(_ nums: inout [Int], start: Int, end: Int) {
    
    var start = start
    var end = end
    
    
    while start < end {
        nums.swapAt(start, end)
        start += 1
        end -= 1
    }
}


public func containsDuplicate(_ nums: inout [Int]) -> Bool {
        
    let array = nums.sorted { a, b in
        
        if a > b {
            return true
        }
        if a < b {
            return false
        }
        return false
    }
    
//    for i in 0..<nums.count {
//
//        for j in 0..<nums.count-i-1 {
//
//            if nums[j] > nums[j+1] {
//
//                nums[j] = nums[j]^nums[j+1]
//                nums[j+1] = nums[j]^nums[j+1]
//                nums[j] = nums[j]^nums[j+1]
//            }
//        }
//
//    }
//
    for i in 0..<array.count {
        
        if array[i] == array[i+1] {
            return true
        }
    }
    
    return false
}

