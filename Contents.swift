import UIKit

//run-length encoding part 1

//1. encoding
//input:   aaabbbccd
//output:  3a3b2c1d

func encodingString(input : String) -> String {
    var count = 0
    var prevChar = String(input.first!)
    var retString = ""
    var index = 0
    for char in input {
        index = index + 1
        if String(char) == prevChar {
            count = count + 1
        } else {
            retString.append("\(count)\(prevChar)")
            count = 1
            if index == input.count-1 {
                retString.append("\(count)\(char)")
            }
        }
        
        prevChar = String(char)
    }
    return retString
}

encodingString(input: "aaabbbccdd")

//2. decoding
//input:  3a3b2c1d
//output: aaabbbccd

func decodingString (input : String) -> String {
    let inputArray = Array(input)
    var index = 0
    var retString = ""
    for char in inputArray {
        index = index + 1
        if let value = Int(String(char)) {
            for _ in 1...value {
                retString.append(inputArray[index])
            }
        }
    }
    print(retString)
    return ""
}

decodingString(input: "3a3b2c1d")
