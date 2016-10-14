

import Foundation

var locations=["Enclosure A","Enclosure B","Enclosure C","Enclosure D","Enclosure E","Enclosure F"]
var zooAnimals = [Animal]()
var zooEmployees = [Person]()
var zooVisitors = [Person]()

func listAnimals(){
    for name in zooAnimals{
        print("Animals name:\(name.name)")
        print("Animals discription: \(name.discription)")
}
}

func listPerson(){
        for name in zooEmployees{
            print("Persons name:\(name.name)")
            print("Persons discription: \(name.discription)")
        }

}
func listVisitors(){
    for name in zooVisitors{
        print("Persons name:\(name.name)")
        print("Persons discription: \(name.discription)")
    }
    
}

