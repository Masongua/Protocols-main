/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable {
    
    
    
    
    let name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "\(name) is \(age) years old"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
    
}


let drake = Human(name: "drake", age: 34)
let john  = Human(name: "John", age: 23)
/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(drake)
print(john)

/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(drake == john)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
let memo = Human(name: "memo", age: 14)
let ochoa = Human(name: "Ochoa", age: 34)
let Leo = Human(name: "Leo", age: 34)

var People: [Human] = [drake, john, memo, ochoa, Leo]
let sortedPeople = People.sorted(by: <)

for h in sortedPeople {
    print(h)
}


import Foundation


//: page 1 of 2  |  [Next: App Exercise - Printable Workouts](@next)
