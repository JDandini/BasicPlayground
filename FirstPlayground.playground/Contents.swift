import UIKit
// Comentario

//Declarando constantes
let zeroAsInt: Int = 0
let zeroAsDouble: Double = 0.0
let zeroAsString: String = "0"

//Imprimiendo en consola
print(zeroAsInt)
print(zeroAsDouble)
print(zeroAsString)

// Variables
var integerNumber: Int = 1
var doubleNumber: Double = 1
var stringNumber: String = "1"

let boolean: Bool = true
var anotherBoolean: Bool = false

//Funciones
func sum(first: Int, second: Int) -> Int {
    return first + second
}


// Estructuras

struct Person {
    var name: String
    var age: Int
    var hobbie: String

    func selfIntroduce() {
        print("My name is " + name)
        print("I'm \(age) years old")
        print("My hobbie is " + hobbie)
    }
}

let firstPerson = Person(name: "Hugo", age: 21, hobbie: "Jugar cartas")
let secondPerson = Person(name: "Paco", age: 21, hobbie: "Videojuegos")
let thirdPerson = Person(name: "Luis", age: 21, hobbie: "Hacer deporte")

firstPerson.selfIntroduce()
secondPerson.selfIntroduce()
thirdPerson.selfIntroduce()
