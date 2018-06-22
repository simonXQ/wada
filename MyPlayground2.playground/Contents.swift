//: Playground - noun: a place where people can play

import UIKit


//constant
let x = 10 // type inference

//explicitly type

let y: Int = 20

//variable
var z = 40
z = 50

//type safe
let l = "simon"

//Binary operator '+' cannot be applied to operands of type 'Int' and 'String' (ERROR)
//let m = z + l

let one = "hello"
let two = "good morning"

let m = one + two

//tuple - compound data type
//uses - multiple return type from function
let aTuple = (5, 2.0, true, [1,2,3], [1.9, 2.0])
print(aTuple.0)
print(aTuple.1)
print(aTuple.2)// to select element in the tuple: using "."
print(aTuple.3[0])


func dateMonthYear() -> (Int, String, Int) { // -> indicates you want a return type
    let date = 22
    let month = "Jan"
    let year = 2018
    
    return (date, month, year)
}

let dataTuple = dateMonthYear()
let date = dataTuple.0
let month = dataTuple.1
let year = dataTuple.2


//collection types
//- array, - ordered, index, access by index
//dictionary, key value, unordered = ["key": value] exapmle - ["kName": "simon"]
//set - unordered, unique - usage - we want to create a collection of SSN(must be unique)


// explicit int array
let array1: [Int] = [1,2,3]
//type inference array
let array2 = [1,2,3]

//float
let array3 : [Float] = [2.3, 2.5, 6.4]

//string array
let array4: [String] = ["dsa","dsad","rew"]

//any
let hetrogeniousArray: [Any] = [1,true, 2.0, "astring", ["key": 9]]

//gotcha
var agianhetrongeniousArray : [Any] = [1,true, 2.0, "astring", ["key": 9]]
agianhetrongeniousArray.append("dawa")

//an empty array
let oneMoreArray = [Int]()
print(oneMoreArray)

//an empty array of dictionary
let yetAnotherArray = [[String : Any]]()

//tuple
let tupleArray = [(Int, Int, Double)]()

//<>angle brackets
var arr1 = Array<Int>()
arr1.append(2)
let arr2 = Array<String>()
let arr3 = Array<Bool>()


//use subscript for accessing element by index[]
//use append(parameter) for adding object

agianhetrongeniousArray.remove(at: 0)

agianhetrongeniousArray.count

var arrayWithCap = Array<Int>()
arrayWithCap.append(1)



//repeating
let repeatEx = Array(repeating: 1, count: 5)
print(repeatEx)

//dictionary
var aDict = ["keyName": "simon", "keyLast": "gao"]

let name = aDict["keyName"]
let LastName = aDict["keyLast"]

//nil coalescing operator
print(name ?? "john")
let obj = name ?? "John"
print(LastName ?? "Magic")


//set value
aDict["keyName"] = "wada"

print(aDict.keys)
print(aDict.values)


//optional -- it is a data type
//optionals are nums with two cases none and some
//in simole languahe a optional can have some value or nil
//uses 1.init something with nil 2.getting some data(person data)
//from server where there might be some info missing
//optional must be var!!


//5-6 ways to unwrap before using optional
//nil coalescing
//optional binding
//optional chaining
//forceunwrapping
//swich - as optional are num we can access it's ceesss cases for value



var aOptional: Int?
aOptional = 5

if aOptional != nil{
let finalValue = 2 + aOptional! // aOptional , called force unwrap
}else{
    print("it is nil")
}


var anOptional: Float?
anOptional = 2.0
let value = anOptional ?? 0.0// unwrapping with ??

var stringOptional : String? = "simon"
//if stringOptional != nil{
//    let value = stringOptional!
//}else{
//    print("it is nil")
//}

if let unwrapValue = stringOptional{
    let strGreeting = "good morning" + unwrapValue
}else{
    print("it is nil")
}



//guard let

func getValue() -> String{
    
    let aOptional : Int? = 50
    guard let unwarppefValue = aOptional else { return "" }
    
    /*do calculation only after unwrap
     */
    
    let greetings = 20 + unwarppefValue
   
    //string interpolation
    return "\(greetings)"
    
}


// optional chaining

