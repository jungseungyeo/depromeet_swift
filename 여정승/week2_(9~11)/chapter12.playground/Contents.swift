//: Playground - noun: a place where people can play

import UIKit

//func printPlayground(first interger1 : Int, second interger2 : Int){
//    print("\(interger1) + \(interger2) = \(interger1 + interger2)")
//}
//
//printPlayground(first: 1, second: 2)
//
//
//func printPersonalGreetings(to names: Int...) {
////    for name in names {
////        print("Hello \(name), welcome to the playground.")
////    }
//    print(names)
//    print(type(of: names))
//}
//
//printPersonalGreetings(to: 1,2,3,4,5)

//func multipleReturn() -> (Int , Int) {
//    return (1, 1)
//}
//
//print(multipleReturn())

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    
    guard let middleName = name.middle else {
        print("name.middle is nil")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Matt", "Danger", "Matias"))
