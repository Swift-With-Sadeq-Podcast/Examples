import Foundation


func artistBirthYear(artist name: String) -> Int {
    if name == "Taylor Swift" { return 1989 }
    if name == "Adele" { return 1988 }
    if name == "Eminem" { return 1972 }
    
    return 0
}


func getIndexOf(_ shouldFindNumber: Int, inArray array: [Int]) -> Int {
    var indexInArray: Int = 0
    for (index, number) in array.enumerated() {
        if number == shouldFindNumber {
            indexInArray = index
        }
    }
    return indexInArray
}

/*
 
 enum Optional<Wrapped> {
 case some(Wrapped)
 case none
 }
 
*/


func artistBirthYearWithOptional(artist name: String) -> Int? {
    if name == "Taylor Swift" { return 1989 }
    if name == "Adele" { return 1988 }
    if name == "Eminem" { return 1972 }
    return nil
}


func getIndexOfWithOptional(_ shouldFindNumber: Int, inArray array: [Int]) -> Int? {
    var indexInArray: Int? = nil
    for (index, number) in array.enumerated() {
        if number == shouldFindNumber {
            indexInArray = index
        }
    }
    return indexInArray
}

func optionalBindingWithIfLetStatement() {
    let dictionary = ["iPhone 11" : 2019, "iPhone 12" : 2020, "iPhone 13" : 2021]
    
    if let iphone11ReleaseDate = dictionary["iPhone 11"] {
        print(iphone11ReleaseDate)
        // 2019
    }
}

func optionalBindingWithGuardStatement() {
    let dictionary = ["iPhone 11" : 2019, "iPhone 12" : 2020, "iPhone 13" : 2021]
    guard let iphone12ReleaseDate = dictionary["iPhone 12"] else { return }
    print(iphone12ReleaseDate)
    // 2020
}

func optionalBindingWithSwitchStatement() {
    let name: String? = "Sadeq"
    
    switch name {
    case .some(let unwrapped):
        print(unwrapped)
        // "Sadeq"
    case .none:
        print("Nil")
    }
}

// Part 2
let fruit: String? = "Apple"
print(fruit?.count)
// 5

let anotherFruit: String? = nil
print(anotherFruit?.count)
// nil

// Nil-Coalescing Operator(default value) - 11:50
var anotherAnimal: String? = "Dog"
print(anotherAnimal)
// Optional("Dog")
anotherAnimal = nil
print(anotherAnimal ?? "Unknown animal")
// Unknown animal

// Explicitly unwrap(force unwrap) 
let number = Int("23") // Int?
print(number!)

// Implicitly unwrap
let name: String! = "Apple"
print(name.count) // No need to use question mark to access count property.
