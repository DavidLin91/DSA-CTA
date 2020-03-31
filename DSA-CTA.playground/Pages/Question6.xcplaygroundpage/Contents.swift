// Q6.
// Implement a function that accepts an array of integers as an argument.
// This function should return the sum of each integer in the array.
// Your solution should be **recursive**. Your function must be pure (cannot use global variables)
// Sample Input [5, 2, 9, 11]
// Sample Output: 27

func sumOfInputs(_ numbers: [Int]) -> Int {
    guard !numbers.isEmpty else {
        return 0
    }
    print(numbers)
    return numbers.first! + sumOfInputs(Array(numbers.dropFirst()))
}

let result = sumOfInputs([5, 2, 9, 11])
print(result)
