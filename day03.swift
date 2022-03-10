//
//  day03.swift
//  LeetCode
//
//  Created by 陆小懒 on 2022/3/10.
//

import Foundation

/*
 任何数和0做异或运算，结果仍然是原来的数
 任何数和其自身做异或运算，结果是0
 异或运算满足交换律和结合律，
 */


/// 只出现一次的数字
/// - Parameter nums: nums description
/// - Returns: description
public func singleNumber(_ nums: [Int]) -> Int {
    
    var result = 0
    
    for num in nums {
        
        result = result^num
    }
    return result
    
}


/*
 描述：给你两个整数数组 nums1 和 nums2 ，请你以数组形式返回两数组的交集。返回结果中每个元素出现的次数，应与元素在两个数组中都出现的次数一致（如果出现次数不一致，则考虑取较小值）。可以不考虑输出结果的顺序。
 */
/// 两个数组的交集 II
/// - Parameters:
///   - num1: num1 description
///   - num2: num2 description
/// - Returns: description
public func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    
    //也可以用元组表示
    var map: [Int : Int] = [:]
    var result: [Int] = []
    
    if nums1.count < nums2.count {
        
        for num in nums1 {
            
            let count = (map[num] ?? 0) + 1
            
            map[num] = count
        }
        
        for num in nums2 {
            
            if var count = map[num]  {
                if count > 0 {
                    result.append(num)
                    count -= 1
                    
                    if count > 0 {
                        map[num] = count
                    } else {
                        map.removeValue(forKey: num)
                    }
                }
            }
        }
    } else {
        for num in nums2 {
            
            let count = (map[num] ?? 0) + 1
            
            map[num] = count
        }
        
        for num in nums1 {
            
            if var count = map[num]  {
                if count > 0 {
                    result.append(num)
                    count -= 1
                    
                    if count > 0 {
                        map[num] = count
                    } else {
                        map.removeValue(forKey: num)
                    }
                }
            }
        }
    }
 
    return result
    
}



/*
 哈希表可以用来表示特殊数据结构，比如说字典，映射和关联数组等
 
 
 */


struct GridPoint {
    var x: Int
    var y: Int
}

extension GridPoint: Hashable {
    
    static  func == (lhs: GridPoint, rhs: GridPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    /// 提供哈希值
    /// - Parameter hasher: 通过将该值的基本组成部分输入给定的散列器来散列它们。
    /// 必需的。提供的默认实现。
    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}


func tappedPoints() {
    
    var tappedPoints: Set =  [GridPoint(x: 2, y: 3), GridPoint(x: 4, y: 1)]
    
    let nextTap = GridPoint(x: 0, y: 1)
    
    if tappedPoints.contains(nextTap) {
        print("Already tapped at (\(nextTap.x), \(nextTap.y)).")
    } else {
        tappedPoints.insert(nextTap)
        print("New tap detected at (\(nextTap.x), \(nextTap.y)).")
    }
}


