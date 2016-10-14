import Foundation
class IO {
    func getInput()->String{
        let keyboard = FileHandle.standardInput;
        let inputData = keyboard.availableData;
        let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
        if let string=str{
            return string.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines)
        } else{
            return "Invalid input!"
        }
    }
    func writeOutput(_ message:String){
        print("\(message)\n")
    }
}
