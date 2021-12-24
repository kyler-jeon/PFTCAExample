//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


struct Person {
    var name: String
}

struct Stuff {
    var name: String
    var owner: Person
}

var yejin = Person(name: "Yejin")
var macbook = Stuff(name: "macbook", owner: yejin)

print(type(of: \Person.name))

var result: Any = macbook[keyPath: \Stuff.name]

print(type(of: result))


let keyPath = \Stuff.owner
let nameKeyPath = keyPath.appending(path: \.name)

print(macbook[keyPath: nameKeyPath])

print(macbook[keyPath: \Stuff.owner.name])
print(macbook.owner.name)

