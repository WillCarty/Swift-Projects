

import Foundation
class Person{
    
    
    let name: String
    let discription: String
    let isEmployee : String
    private var io = IO()
    init(name: String, discription: String, isEmployee: String){
        self.name = name
        self.discription = discription
        self.isEmployee  = isEmployee
    }
    
    
}
func addPerson(isEmployee: String){
    io.writeOutput("Please enter the name of the person")
    var personName = io.getInput()
    io.writeOutput("Please enter a discription of \(personName)")
    var personDisc = io.getInput()
    io.writeOutput("Is this a zoo Employee? Type true if yes, false if no")
    var personEmployee = io.getInput()
    var newPerson = Person(name: personName, discription: personDisc, isEmployee: personEmployee)
    if personEmployee == "yes"{
        zooEmployees.append(newPerson)
    }else if
        personEmployee == "no"{
        zooVisitors.append(newPerson)
    }
}
