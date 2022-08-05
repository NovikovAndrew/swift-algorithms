import Foundation

public class Node<Value> {
    public var value: Value?
    public var next: Node<Value>?
    
    public init(value: Value?, next: Node<Value>? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return String(describing: value!)
        }
        
        return String(describing: value!) + " -> " + String(describing: next)
    }
}
