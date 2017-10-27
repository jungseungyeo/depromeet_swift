//: Playground - noun: a place where people can play

import UIKit

//let vounteerCounts = ["q", "a", "b", "s"]
//
//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i > j
//}
//
//let volunteersSorted = vounteerCounts.sorted(by: sortAscending)
//
//print(volunteersSorted)

//let volunteersSorted = vounteerCounts.sorted(by: {
//    (i: String, j: String) -> Bool in
//    return i < j
//})
//
//print(volunteersSorted)


//{(parameters) -> return type in
//        //코드
//)}


//let volunteerCounts = [1,3,40,32,2,53,77,13]
//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

//func makeTownGrand() -> (Int, Int) -> Int{
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//print("Knowhere has \(stoplights) stoplights.")

let volunteerCounts = [1,3,40,32,2,53,77,13]
let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights")
