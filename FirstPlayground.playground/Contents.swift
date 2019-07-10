import UIKit

struct StructPerson {
    let name: String
    let lastname: String
    let birthdate: String
    var age: Int {
        //Create formatter
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let birthDateAsDate = dateFormatter.date(from: birthdate)
        guard let birthDate = birthDateAsDate else {
            return 0
        }
        let calendar = Calendar(identifier: .gregorian)
        let now = Date()
        let components = calendar.dateComponents([.year], from: birthDate, to: now)

        return components.year ?? 0
    }

}

class ClassPerson {
    let name: String
    let lastname: String
    let birthdate: String
    var age: Int

    init(name: String, lastname: String, birthdate: String, age: Int) {
        self.name = name
        self.lastname = lastname
        self.birthdate = birthdate
        self.age = age
    }
}

let classPerson =  ClassPerson(name: "Javier", lastname: "Castañeda", birthdate: "1987-09-23", age: 31)

let structPerson = StructPerson(name: "Javier", lastname: "Castañeda", birthdate: "1987-05-23")


let secondClassPerson = classPerson
secondClassPerson.age = 32

print(classPerson.age)
print(secondClassPerson.age)

var secondStructPerson = structPerson

print("--------Structs----------")
print(structPerson.age)
print(secondStructPerson.age)
