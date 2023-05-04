import UIKit

// //////////////////////////
//var name : String = "ync"
//var age : Int = 100
//var job = "IOS Programmer" // 타입 추론
//var height = 181.5
//age = 99
//job = "Web Programmer"
//
//print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 키는 \(height)센티미터, 직업은 \(job)입니다.")
//
// //////////////////////////

// //////////////////////////
//var integer : Int = -100
//let unsignedInteger : UInt = 50
//print("integer 값 : \(integer), unsignedInteger 값 : \(unsignedInteger)")
//print("Int 최대값 : \(Int.max), Int 최소값 : \(Int.min)")
//
//let largeInteger : Int64 = Int64.max
//print("Int64 최대값 : \(largeInteger)")

//let c : Character = "😡"
// //////////////////////////

// //////////////////////////
//print(c)
//
//let name : String = "ync computer"
//
//var text : String = ""
//
//text.append("제 이름은 ")
//text = text + name + " 입니다."
//print(text)
//print(text.count)
//print(text.isEmpty)
//print(name == "ync computer")
// //////////////////////////

// //////////////////////////
//let first : Int = 5
//let second : Int = 7
//
//if first > second {
//    print("first > second")
//} else if first < second {
//    print("first < second")
//} else {
//    print("first == second")
//}
// //////////////////////////

// //////////////////////////
//let integerValue : Int = 5
//switch integerValue {
//case 0 :
//    print("Value == zero")
//case 1...10:
//    print("Value == 1~10")
//case Int.min..<0, 101..<Int.max:
//    print("Value < 0 or Value > 100")
//    break
//default:
//    print("10 < Value <= 100")
//}
// //////////////////////////

// //////////////////////////
//var A : Int = 3
//var B : Int = 5
////for i in A...B{
////    print(i)  // 3,4,5
////}
////for i in A..<B {
////    print(i)  // 3,4
////}
////for i in A...100{
////    print(i)  // 3,4,5,6...
////}
//for i in 0...A{
//    print(i)  // 0,1,2,3
//}
// //////////////////////////

// //////////////////////////
//var myName : String = "ync"
//let myName2 : String = nil
//print(myName)
//myName = nil

//var myName : Optional<String> = "ync"
//var myName : String? = "ync"
//print(myName)
//print(myName!)
//myName = nil
//print(myName)
// //////////////////////////

// //////////////////////////
//var myName : String? = "ync"
//if let name = myName {
//    print("My name is \(name)")
//} else {
//    print("myName == nil ")
//}
// //////////////////////////


// //////////////////////////
//var myName : String? = "ync"
//var yourName : String? = "computer"
//if let name = myName, let friend = yourName{
//    print("We are friend! \(name) & \(friend)")
//} else {
//    print("myName == nil || friend == nil")
//}
// //////////////////////////

// //////////////////////////
//let a : Int! = 1
//let b : Int = a
//let c : Int = a!
//let d = a
//let e = a + 1
//print(a,b,c,d,e)
//print(type(of: a))
//print(type(of: b))
//print(type(of: c))
//print(type(of: d))
//print(type(of: e))
// //////////////////////////

// //////////////////////////
var array1 : Array<String> = ["ync", "computer", "software", "web programming"]
var array2 : [String] = ["ync", "computer", "software", "web programming"]

var array3 : Array<String> = Array<String>()
var array4 : [String] = []

print(array1)
print(array1.count)
print(array1.isEmpty)

print(array1[1])
array1[1] = "COMPUTER"
print(array1)

array1.append("computer")
array1.append(contentsOf: ["android", "ios"])
print(array1)

array1.insert("SWIFT", at: 2)
print(array1)

if let index = array1.firstIndex(of: "software"){
    print("\(index)번째")
}

print(array1.first!)
print(array1.last!)

//let removeString = array1.removeFirst()
//let removeString = array1.removeLast()
//let removeString = array1.remove(at: 0)
//print(removeString)
//print(array1)

print(array1[1...3])
for str in array1[1...3]{
    print(str)
}


// //////////////////////////
