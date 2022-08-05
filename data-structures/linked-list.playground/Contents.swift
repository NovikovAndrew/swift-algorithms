example("---------Example Node---------") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
    print()
}


example("---------Push operation---------") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
    print()
}


example("---------Append operation---------") {
    var list = LinkedList<Int>()
    list.append(1)
    list.append(2)
    list.append(3)
    
    print(list)
    print()
}


example("---------Inserting at a particular index---------") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Before inserting: \(list)")
    let middleNode = list.node(at: 1)!
    
    for _ in 1...4 {
        list.insert(value: -1, after: middleNode)
    }
    
    print("After inserting: \(list)")
    print()
}


example("---------Pop operation---------") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before popping list: \(list)")
    
    let poppedElement = list.pop()!
    
    print("After popping list: \(list)")
    print("Popped value: " + String(describing: poppedElement))
    print()
}


example("---------Remove last operation---------") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing list: \(list)")
    
    let removedElement = list.removeLast()!
    
    print("After removing list: \(list)")
    print("Removed value: " + String(describing: removedElement))
    print()
}


example("---------Remove operation---------") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing at particular index: \(list)")
    let index = 1
    let node = list.node(at: index - 1)!
    let removedElement = list.remove(after: node)!
    
    print("After removing at index \(index): \(list)")
    print("Removed value: " + String(describing: removedElement))
    print()
}
