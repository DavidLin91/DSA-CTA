//Question 2
// Write a function that takes in an array of integers (arr) and a number (n)
// You function should return an array with only numbers appearing n or more times.
// Your solution must work in O(n) time.
//
// Example:
// Input: [1,3,4,1,9,1,3,4,3,1,2], 3

let arr = [1,3,4,1,9,1,3,4,3,1,2]
let occurance = 3
var finalArray = [Int]()

func nOcurrances(arr: [Int]) -> [Int] {
    var freqDict = [Int:Int]()
    var count = 0
    for number in arr {
        if let numberCount = freqDict[number] {
            freqDict[number] = numberCount + 1
            count = numberCount
        } else {
            freqDict[number] = 1
        }
        if count == occurance {
        print(occurance)
            finalArray.append(number)
        }
    }
    return finalArray
}

print(finalArray)
