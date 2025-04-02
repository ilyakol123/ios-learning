//Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
//Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
//- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    // Write your code here
    var conversionResult = ""
    var inputList = s.split(separator: ":")
    
    var hours = inputList[0]
    var minutes = inputList[1]
    var seconds = inputList[2].dropLast(2)
    
    if hours == "12" {
        if s.contains("AM") {
            conversionResult = "00:\(minutes):\(seconds)"
        } else {
            conversionResult = "12:\(minutes):\(seconds)"
        }
    } else {
        if s.contains("AM") {
        conversionResult = "\(hours):\(minutes):\(seconds)"
    } else {
        conversionResult = "\(Int(hours)! + 12):\(minutes):\(seconds)"
    }
    }
    
    
    return conversionResult
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = timeConversion(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
