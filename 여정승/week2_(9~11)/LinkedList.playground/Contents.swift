//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var value: T
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

struct LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    //node 삽입
    mutating func append(value: T) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
            
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    mutating func remove(value: Node<Any>){
        let remove = value
    }

}


extension LinkedList: CustomStringConvertible {
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

var linkedList = LinkedList<String>()
linkedList.append(value: "Node0")
linkedList.append(value: "Node1")
linkedList.append(value: "Node2")
linkedList.append(value: "Node3")

linkedList.remove(value: <#T##Node<Any>#>)
//print(linkedList)  // [Node0, Node1, Node2, Node3]

