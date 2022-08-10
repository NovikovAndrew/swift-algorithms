public class BinaryNode<Element> {
    public var value: Element
    public var leftChild: BinaryNode?
    public var rightChild: BinaryNode?
    
    public init(value: Element) {
        self.value = value
    }
}

// MARK: - Traverse

public extension BinaryNode {
    func traverseInOrder(visit: (Element) -> Void) {
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
    
    func traversePreOrder(vivsit: (Element) -> Void) {
        vivsit(value)
        leftChild?.traversePreOrder(vivsit: vivsit)
        rightChild?.traversePreOrder(vivsit: vivsit)
    }
    
    func traversePostOrder(visit: (Element) -> Void) {
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
        leftChild?.traversePostOrder(visit: visit)
    }
}

// MARK: - Helpers

public extension BinaryNode {
    func height(of node: BinaryNode?) -> Int {
        guard let node = node else {
            return -1
        }
        
        return 1 + max(height(of: node.rightChild), height(of: node.leftChild))
    }
}


// MARK: - CustomStringConvertible

extension BinaryNode: CustomStringConvertible {
    public var description: String {
       diagram(for: self)
     }
    
    private func diagram(for node: BinaryNode?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        
        return diagram(
            for: node.rightChild,
            top + " ",
            top + "┌──",
            top + "│ "
        )
        + root + "\(node.value)\n" +
        diagram(
            for: node.leftChild,
            bottom + "│ ",
            bottom + "└──",
            bottom + " "
        )
    }
}
