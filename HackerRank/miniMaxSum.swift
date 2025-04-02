//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
//Then print the respective minimum and maximum values as a single line of two space-separated long integers.

import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    
    // Write your code here
var maxSum = 0
var minSum = 0

var arr2 = arr
var arr3 = arr

var maxNum = 0
var minNum = 999999999

    
for j in 1...4 {
    
    for i in arr2 {
        if i > maxNum {
            maxNum = i
        }
    }
    maxSum += maxNum
    arr2.remove(at: arr2.firstIndex(of: maxNum)!)
    maxNum = 0
}

for j in 1...4 {
    
    for i in arr3 {
        if i < minNum {
            minNum = i
        }
    }
    minSum += minNum
    arr3.remove(at: arr3.firstIndex(of: minNum)!)
    minNum = 999999999

}

print ("\(minSum) \(maxSum)")
}

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
