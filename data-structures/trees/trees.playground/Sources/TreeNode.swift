import Foundation
public class TreeNode<T> {
    
    // MARK: - Instance proprties
    
    public var value: T
    public var children: [TreeNode] = []
    
    // MARK: - Object livecycle
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
}


// MARL: - Depth-first traversal

public extension TreeNode {
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}


public extension TreeNode where T == String {
    func makeBeverageTree() -> TreeNode<String> {
        let tree = TreeNode("Beverages")
        let hot = TreeNode("hot")
        let cold = TreeNode("cold")
        let tea = TreeNode("tea")
        let coffee = TreeNode("coffee")
        let chocolate = TreeNode("cocoa")
        let blackTea = TreeNode("black")
        let greenTea = TreeNode("green")
        let chaiTea = TreeNode("chai")
        let soda = TreeNode("soda")
        let milk = TreeNode("milk")
        let gingerAle = TreeNode("ginger ale")
        let bitterLemon = TreeNode("bitter lemon")
        
        tree.add(hot)
        tree.add(cold)
        
        hot.add(tea)
        hot.add(coffee)
        hot.add(chocolate)
        
        cold.add(soda)
        cold.add(milk)
        

        tea.add(blackTea)
        tea.add(greenTea)
        tea.add(chaiTea)

        soda.add(gingerAle)
        soda.add(bitterLemon)
        
        return tree
    }
}
