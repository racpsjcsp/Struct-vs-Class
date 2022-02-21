/// source: https://medium.com/@burakakyalcin/class-vs-struct-in-swift-f8c48eaacdba


import Foundation

// MARK: - Class

class AnimalClass {
    var name: String
    
    init(name: String) {
        self.name = name
        print("CLASS\n-----")
    }
}

var dog1 = AnimalClass(name: "dog")
var cat1 = dog1

print(dog1.name) // prints "dog"
print(cat1.name) // prints "dog"

dog1.name = "hound\n"

print(cat1.name) //prints "hound"


// MARK: - Struct

struct AnimalStruct {
    var name: String
    
    init(name: String) {
        self.name = name
        print("STRUCT\n-----")
    }
}

var dog2 = AnimalStruct(name: "dog")
var cat2 = dog2

print(dog2.name) // prints "dog"
print(cat2.name) // prints "dog"

dog2.name = "hound"

print(cat2.name) //prints "dog"


/// When we are initializing an object, RAM allocates memory space and address to it. Then, assigns its memory address to the object we created.

/// WHAT IS A REFERENCE TYPE?

/// We have an Animal class that only has a name property. Then, we create a dog object and create cat object but assign dog to the cat object.

/// Since they are reference type objects, they are pointing to the same memory address, so they are actually the same objects! If we change one of their property, other one will be affected as well because they are pointing to the same address. Let’s take a look below.

/// WHAT IS A VALUE TYPE?

/// A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.



/// WHEN TO USE CLASSES?
/// We need to use classes when we need Objective-C interoperability. If we use an Objective-C API that receives data from our side, those data must be a class because Objective-C doesn’t have structs.
/// Another use case for classes is when we need to control identity. If we need an instance of an object through the app and we want to control its identity, classes are the solution.


/// WHEN TO USE STRUCTS?
/// Almost anytime. We must use structs by default to represent common kinds of data. Structs in Swift are powerful and have many features. They have stored properties, computed properties and methods. Also, they can conform to protocols and gain their behaviors. Many of types from Foundation and the Swift standard library are structs; for example strings, arrays, numbers and dictionaries.
/// Structs help you track a portion of your code since they are value types. We only need to focus to the area where the struct is used, because there is not any object that points to struct’s address and manipulate it. Otherwise we need to look at possible places that may change our object’s value.
/// Apart from classes, we should use structs when we don’t control identity. Think about fetching data from server, there may be same objects but since we are not controlling identity, we better use structs.
