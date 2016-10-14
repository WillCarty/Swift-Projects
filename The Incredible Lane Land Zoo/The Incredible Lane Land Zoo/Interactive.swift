

import Foundation
class Interactive: Animal{
    private var done: Bool = false;
    private var currentInput:String = "q";
    private var io = IO()
    private var animal = Animal(name: "", discription: "")
    var totalBill: Double = 0.0
    var partyTotal:Int = 0
    var tipPercent:Double = 0.0
    var subTotal:Double = 0.0
    var totalPerPerson:Double = 0.0
    func go() {
        
        while !done{
        welcomeMenu()
        }
    }
    
    func welcomeMenu()-> String{
        io.writeOutput("*****************************")
        io.writeOutput("*Welcome To The LaneLand Zoo*")
        io.writeOutput("*****************************")
        io.writeOutput("Please enjoy your visit")
        io.writeOutput("1. Add a animal to your zoo")
        io.writeOutput("2. View list of animals in the park")
        io.writeOutput("3. Add person")
        io.writeOutput("4. List employees")
        io.writeOutput("5. List visitors ")
        io.writeOutput("6. Help Menu")
        io.writeOutput("7. Exit Program")
        currentInput = io.getInput()
        switch currentInput {
            case "1": addAnimal()
            case "2": listAnimals()
            case "3": addPerson(isEmployee: "")
            case "4": listPerson()
            case "5": listVisitors()
            case "6":print("Welcome to the help menu this is a work in progress program please follow the prompts at all menus, all responses must be exact and case sensitive.")
            case "7": done = true
        default:
            print("please select a number between 1 and 5")
        }
        return currentInput
    }
    
        }
   

