                //
                //  libraryClass.swift
                //  TEKYLibrary-WJC
                //
                //  Created by Will Carty on 10/11/16.
                //  Copyright © 2016 Will Carty. All rights reserved.
                //
                
                import Foundation
                class libraryTK {
                    private var done: Bool = false;
                    private var currentInput:String = "q";
                    private var io = IO()
                    var bookSelection = [
                        0001:"The Mythical Man-Month by Frederick P, Brooks Jr.",
                        0002:"Don't Make Me Think by Steve Krug",
                        0003:"Coders at Work by Peter Seibel",
                        0004:"The Pragmatic Programmer by Andrew Hunt and David Thomas",
                        0005:"Clean Code by Robert C. Martin",
                        0006:"Programming Pearls by Jon Bentley",
                        0007:"Creacking the Coding Interview by Gayle LaskMann McDowell",
                        0008:"Soft Skills by John Sonmez"
                    ]
                    var checkedOutBooks:[Int:String] = [:]
                    func go(){
                        while !done {
                            welcomeMenu()
                            
                        }
                    }
                    
                    func welcomeMenu()-> String{
                        io.writeOutput("____________________________")
                        io.writeOutput("Welcome To The TEKY Library.")
                        io.writeOutput("----------------------------")
                        io.writeOutput("This library contains books on programming languages and technology")
                        io.writeOutput("Please feel free to browse our selection of technology books")
                        io.writeOutput("1. Selection list")
                        io.writeOutput("2. Check out a book")
                        io.writeOutput("3.Check in a book")
                        io.writeOutput("4.Help")
                        io.writeOutput("5.Exit Library Program")
                        io.writeOutput("6.Checked out book list")
                        io.writeOutput("7. Add a Book to the Library")
                        currentInput = io.getInput()
                        if currentInput == "1" {
                            listSelections()
                            
                        }else if currentInput == "2" {
                            bookList()
                            bookCheckout()
                        }else if currentInput == "3"{
                            bookList()
                            bookCheckin()
                        }else if currentInput == "4"{
                            helpMenu()
                        }else if currentInput == "5"{
                            exitProgram()
                        }else if currentInput == "6"{
                            checkedOut()
                        }else if currentInput == "7"{
                                addABook()
                            }
                            io.writeOutput("Please press 1 to return to main menu")
                            currentInput = io.getInput()
                            if currentInput == "1"{
                                welcomeMenu()
                            }
                        
                        
                        else {
                            print("Please enter a selection between 1 and 5")
                        }
                        
                        return currentInput
                    }
                    func listSelections() {
                        
                        let sortedKeys = bookSelection.keys.sorted()
                        
                        for key in sortedKeys {
                            print("Catalog Number: \(key) Title and Author: \(bookSelection[key] ?? "no title available")")
                        }
                        io.writeOutput("Please type 1 checkout a book , type 2 to check in a book, type 3 to return to the welcome screen")
                        currentInput = io.getInput()
                        if currentInput == "1"{
                            bookCheckout()
                        }else if currentInput == "2"{
                            bookCheckin()
                            
                        }else if currentInput == "3"{
                            welcomeMenu()
                            
                        }
                    }
                    
                    func bookCheckout(){
                        let currentDate = Calendar.current
                        let dueDate = currentDate.date(byAdding: .day, value: 7, to:Date())
                        io.writeOutput("Please enter the number for the title that you would like to check out and hit return")
                        currentInput = io.getInput()
                        if currentInput == "1"{
                            bookSelection[0001]?.removeAll()
                            io.writeOutput("Checked out! (The Mythical Man-Month by Frederick P, Brooks Jr. due back: \(dueDate!)")
                            checkedOutBooks[0001] = "The Mythical Man-Month by Frederick P, Brooks Jr. Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "2"{
                            bookSelection[0002]?.removeAll()
                            io.writeOutput("Checked out! (Don't Make Me Think by Steve Krug due back: \(dueDate!)")
                            checkedOutBooks[0002] = "Don't Make Me Think by Steve Krug. Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "3"{
                            bookSelection[0003]?.removeAll()
                            io.writeOutput("Checked out! (Coders at Work by Peter Seibel due back: \(dueDate!)")
                            checkedOutBooks[0003] = "Coders at Work by Peter Seibel Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "4"{
                            bookSelection[0004]?.removeAll()
                            io.writeOutput("Checked out! (The Pragmatic Programmer by Andrew Hunt and David Thomas due back: \(dueDate!)")
                            checkedOutBooks[0004] = "The Pragmatic Programmer by Andrew Hunt and David Thomas Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            welcomeMenu()
                            
                            
                        }else if currentInput == "5"{
                            bookSelection[0005]?.removeAll()
                            io.writeOutput("Checked out! (Clean Code by Robert C. Martin due back: \(dueDate!)")
                            checkedOutBooks[0005] = "Clean Code by Robert C. Martin Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "6"{
                            bookSelection[0006]?.removeAll()
                            io.writeOutput("Checked out! (Programming Pearls by Jon Bentley due back: \(dueDate!)")
                            checkedOutBooks[0006] = "Programming Pearls by Jon Bentley Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "7"{
                            bookSelection[0007]?.removeAll()
                            io.writeOutput("Checked out! (Creacking the Coding Interview by Gayle LaskMann McDowell due back: \(dueDate!)")
                            checkedOutBooks[0007] = "Creacking the Coding Interview by Gayle LaskMann McDowell Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "8"{
                            bookSelection[0008]?.removeAll()
                            io.writeOutput("Checked out! (Soft Skills by John Sonmez due back: \(dueDate!)")
                            checkedOutBooks[0008] = "Soft Skills by John Sonmez Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                            
                            welcomeMenu()
                            
                        }else if currentInput == "9"{
                            bookSelection[0009]?.removeAll()
                            io.writeOutput("Checked out! (Soft Skills by John Sonmez due back: \(dueDate!)")
                            checkedOutBooks[0009] = "Soft Skills by John Sonmez Checked out: \(Date())"
                            io.writeOutput("Please press the return key to return to the main menu")
                            currentInput = io.getInput()
                        }
                        
                        
                        
                        
                        else{
                            print("You have no selected a vaild option please enther the catalog number of the book you wish to check out.")
                        }
                    }
                    
                    
                    func bookCheckin(){
                        
                        io.writeOutput("Please enter the number for the title that you would like to check in and hit return")
                        currentInput = io.getInput()
                        if currentInput == "1"{
                            checkedOutBooks[0001]?.removeAll()
                            bookSelection[0001] = "The Mythical Man-Month by Frederick P, Brooks Jr."
                            bookList()
                        }else if currentInput == "2"{
                             checkedOutBooks[0002]?.removeAll()
                            bookSelection[0002] = "Don't Make Me Think by Steve Krug"
                            bookList()
                        }else if currentInput == "3"{
                             checkedOutBooks[0003]?.removeAll()
                            bookSelection[0003] = "Coders at Work by Peter Seibel"
                            bookList()
                            
                        }else if currentInput == "4"{
                             checkedOutBooks[0004]?.removeAll()
                            bookSelection[0004] = "The Pragmatic Programmer by Andrew Hunt and David Thomas"
                            bookList()
                            
                        }else if currentInput == "5"{
                             checkedOutBooks[0005]?.removeAll()
                            bookSelection[0005] = "Clean Code by Robert C. Martin"
                            bookList()
                            
                        }else if currentInput == "6"{
                             checkedOutBooks[0006]?.removeAll()
                            bookSelection[0006] = "Programming Pearls by Jon Bentley"
                            bookList()
                            
                        }else if currentInput == "7"{
                             checkedOutBooks[0007]?.removeAll()
                            bookSelection[0007] = "Creacking the Coding Interview by Gayle LaskMann McDowell"
                            bookList()
                            
                        }else if currentInput == "8"{
                             checkedOutBooks[0008]?.removeAll()
                            bookSelection[0008] = "Soft Skills by John Sonmez"
                            bookList()
                            
                        }else{
                            print("You have no selected a vaild option please enther the catalog number of the book you wish to check out.")
                            bookList()
                        }
                        
                    }
                    func bookList(){
                        let sortedKeys = bookSelection.keys.sorted()
                        
                        for key in sortedKeys {
                            print("Catalog Number: \(key) Title and Author: \(bookSelection[key] ?? "no title available")")
                        }
                        
                    }
                    func checkedOut(){
                        let sortedKeys = checkedOutBooks.keys.sorted()
                        
                        for key in sortedKeys {
                            print("Catalog Number: \(key) Title and Author: \(checkedOutBooks[key] ?? "no title available")")
                        }
                        
                    }
                    
                    func helpMenu(){
                        io.writeOutput("Welcome to the help menu. To use this program follow the prompts at each step. If there is a technical issue with the program not running please contact the developer at https://github.com/willcarty")
                        io.writeOutput("Please type 1 to return to the welcome menu")
                        currentInput = io.getInput()
                        if currentInput == "1"{
                            welcomeMenu()
                        }else{
                            print("You have selected the wrong option please try again.")}
                    }
                    func exitProgram(){
                        done = true
                    }
                    func addABook(){
                    io.writeOutput("Please assign the next number available as the Id of the book you are adding IE 0009")
                        currentInput = io.getInput()
                      guard let newBookId = Int(currentInput)
                        
                        else{ print("Did not use a number please try again")
                        return}
                        io.writeOutput("Please type the name and author of the book you are adding to the library")
                        currentInput = io.getInput()
                        guard let newBookTitle = String(currentInput)else{
                            print("please enter books name and author")
                       return }
                        bookSelection[newBookId] = newBookTitle
                      
                    }
                    
                    
                }
                
