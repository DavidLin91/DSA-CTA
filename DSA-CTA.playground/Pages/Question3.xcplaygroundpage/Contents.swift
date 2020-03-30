// Q3.
// Write a function sum that takes a Stack of numbers as input, and returns the sum of all elements.
// Input:
// 3
// 4
// 8
// 1
// 4
//
// Output: 20

struct Stack<T> {
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
    
    var count: Int {
        return arr.count
    }
    
    private var arr: [T] = []
}



func stackSum(stack: Stack<Int>) -> Int {
    var ourStack = stack
    var totalSum = 0
    var finalArr = [Int]()
    
    while !ourStack.isEmpty {
        for _ in 0..<ourStack.count  {
            guard let popNum = ourStack.pop() else {
                return 0
            }
            finalArr.append(popNum)
        }
        
        for num in finalArr {
            totalSum += num
        }
    }
    return totalSum
}


var stack = Stack<Int>()
stack.push(3)
stack.push(4)
stack.push(8)
stack.push(1)
stack.push(4)
stackSum(stack: stack)

