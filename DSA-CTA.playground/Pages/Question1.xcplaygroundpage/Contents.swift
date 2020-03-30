//Question 1
// Given a linked list, write a function to traverse it and print each value in order.

class Node<T> {
    var next: Node?
    let val: T
    
    init(val: T) {
        self.val = val
    }
}



class LinkedList<T> {

var head: Node<T>? // nil
var tail: Node<T>? // nil

// first computed property
public var first: Node<T>? {
  return head
}

// last computed property
public var last: Node<T>? {
  return tail
}

// isEmpty computed property
public var isEmpty: Bool {
  return head == nil // if head equal to nil then list is empty
}

public func append(value: T) {
    let newNode = Node(val: value)
    guard let lastNode = tail else {
        head = newNode
        tail = head
        return
    }
    lastNode.next = newNode
    tail = newNode
    }
}

extension Node: CustomStringConvertible {
  var description: String {
    guard let next = next else {
      return "\(val) -> nil"
    }
    return "\(val) -> \(next)"
  }
}


extension LinkedList: CustomStringConvertible {
  var description: String {
    guard let head = head else {
      return "empty list"
    }
    return "\(head)"
  }
}


let numbers = LinkedList<Int>()
numbers.append(value: 4)
numbers.append(value: 9)
numbers.append(value: 2)
numbers.append(value: 3)

print(numbers)


// Print format:

//```
//-> 4 -> 9 -> 2 -> 3 -> nil
//```
