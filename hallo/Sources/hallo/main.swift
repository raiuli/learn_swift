import SwiftProtobuf
import Foundation
// Another try
//import Data
print("Hello, world!")
/* let individualScores=[75,43,103,87,12]
var teamScore=0
for score in individualScores{
    if score>50{
        teamScore+=3
    }else{
        teamScore+=1
    }
}
print("the team score is \(teamScore) .")

var optionalString:String?="Hello"
print(optionalString==nil)
var optString:String?
print(optString==nil)

var optionalName:String? = nil
var greeting="Hello!"
if let name=optionalName{
    greeting="Hello, \(name)"
}
print(greeting)

let nickname: String? = "rai"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    print(numbers)
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

func makeIncrementer(selectFun:Int) -> ((Int) -> Int) {
    if selectFun == 1{
        func addOne(number: Int) -> Int {
         return 1 + number
        }
         return addOne
    } else if selectFun == 2{
        func addTwo(number: Int) -> Int {
            return 2 + number
        }
        return addTwo
    } else{
        func addZero(number: Int) -> Int {
            return 0 + number
        }
        return addZero
    }
    
}
var increment=makeIncrementer(selectFun:2)

var t=increment(7)
print(t)

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.three
let aceRawValue = ace.rawValue
print("ace \(ace)")
print("aceRawValue \(aceRawValue)")

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
print(a.adjust())
print(a.simpleDescription)
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)
 */
// Create a BookInfo object and populate it:
var info = BookInfo()
var msg=Requests()
info.id = 1734
info.title = "Really Interesting Book"
info.author = "Jane Smith"

// As above, but generating a read-only value:
let info2 = BookInfo.with {
    $0.id = 1735
    $0.title = "Even More Interesting"
    $0.author = "Jane Q. Smith"
  }
print(info)
// Serialize to binary protobuf format:
print("Serialized data:")
let binaryData: Data = try info.serializedData()
print(binaryData)
print("")
//let s
var ss = binaryData.makeIterator()
while var s = ss.next() {
    print(s,separator: ",",terminator: ",")
}
print("")
let str = String(decoding: binaryData, as: UTF8.self)
print(str)


// Deserialize a received Data object from `binaryData`
let decodedInfo = try BookInfo(serializedData: binaryData)



//var se:[UInt8 ]=[8,198,13,18,23,82,101,97,108,108,121,32,73,110,116,101,114,101,115,116,105,110,103,32,66,111,111,107,26,10,74,97,110,101,32,83,109,105,116,104]
var se:[UInt8]=[10, 249, 1, 8, 2, 18, 229, 1, 10, 154, 1, 102, 105, 108, 101, 58, 47, 47, 47, 104, 111, 109, 101, 47, 117, 98, 117, 110, 116, 117, 47, 68, 111, 99, 117, 109, 101, 110, 116, 115, 47, 112, 114, 111, 106, 101, 99, 116, 115, 47, 111, 102, 102, 108, 111, 97, 100, 105, 110, 103, 45, 102, 114, 97, 109, 101, 119, 111, 114, 107, 47, 101, 120, 101, 99, 117, 116, 105, 111, 110, 45, 104, 97, 110, 100, 108, 101, 114, 47, 116, 101, 115, 116, 100, 97, 116, 97, 47, 103, 117, 101, 115, 116, 115, 47, 102, 105, 98, 45, 103, 117, 101, 115, 116, 47, 116, 97, 114, 103, 101, 116, 47, 119, 97, 115, 109, 51, 50, 45, 117, 110, 107, 110, 111, 119, 110, 45, 117, 110, 107, 110, 111, 119, 110, 47, 100, 101, 98, 117, 103, 47, 102, 105, 98, 95, 103, 117, 101, 115, 116, 46, 119, 97, 115, 109, 26, 16, 101, 120, 116, 32, 100, 101, 112, 101, 110, 100, 101, 110, 99, 105, 101, 115, 34, 16, 105, 110, 116, 32, 100, 101, 112, 101, 110, 100, 101, 110, 99, 105, 101, 115, 42, 16, 101, 120, 116, 32, 100, 101, 112, 101, 110, 100, 101, 110, 99, 105, 101, 115, 50, 16, 105, 110, 116, 32, 100, 101, 112, 101, 110, 100, 101, 110, 99, 105, 101, 115, 26, 13, 82, 101, 115, 111, 117, 114, 99, 101, 32, 76, 105, 115, 116]
let arrData = Data(se)
/* var seData = se.
for s in se {
    print(s,terminator: ",")
    
    seData.append(s)
    
} */
let decodedInfo1 = try Requests(serializedData: arrData)
//let decodedInfo1 = try BookInfo(serializedData: arrData)
print()
print(decodedInfo1)
let binaryData1: Data = try decodedInfo1.serializedData()
print(binaryData1)
print("")

ss = binaryData1.makeIterator()
while var s = ss.next() {
    print(s,separator: ",",terminator: ",")
}
print("")
// Serialize to JSON format as a Data object
//let jsonData: Data = try info.jsonUTF8Data()

// Deserialize from JSON format from `jsonData`
//let receivedFromJSON = try BookInfo(jsonUTF8Data: jsonData)