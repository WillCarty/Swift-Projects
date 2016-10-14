//
//  Animal.swift
//  The Incredible Lane Land Zoo
//
//  Created by Will Carty on 10/12/16.
//  Copyright © 2016 Will Carty. All rights reserved.
//

import Foundation

var io = IO()
class Animal{
    
    
    let name: String
    let discription: String
    
    private var io = IO()
    init(name: String, discription: String){
        self.name = name
        self.discription = discription
        
    }
    

}

func addAnimal(){
    io.writeOutput("Please pick a name for you animal")
    var animalName = io.getInput()
    io.writeOutput("Please enter a discription of \(animalName)")
    var animalDisc = io.getInput()
    
    var newAnimal1 = Animal(name: animalName, discription: animalDisc)
    zooAnimals.append(newAnimal1)
}

//Animal.init(name: "Max", discription: "Shinny", gender: Animal.Gender.Female)

