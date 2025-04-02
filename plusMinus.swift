import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    var negativeCount = 0.0
    var positiveCount = 0.0
    var zeroCount = 0.0
    
    for i in arr {
        if i > 0 {
            positiveCount += 1
        } else if i == 0 {
            zeroCount += 1
        } else {
            negativeCount += 1
        }
    }
    
    print((positiveCount / Double(arr.count)))
    print(negativeCount / Double(arr.count))
    print(zeroCount / Double(arr.count))

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
