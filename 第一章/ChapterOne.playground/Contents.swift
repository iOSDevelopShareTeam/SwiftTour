//: Playground - noun: a place where people can play
// author：shavekevin
import UIKit

var str = "Hello, playground"

// 定义常量和变量
var myVariable = 42
myVariable = 50
let myConstant = 42

// 基本数据类型(由编辑器自己判断/给常量或者变量制定本一个数据类型)
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70
//练习(创建一个类型为float值为4的常量或者变量)
let floatValue:Float = 4
// 如何对数据类型进行强制转换
let label = "The width is"
let width = 94
let widthLabel = label + String(width)
//练习  去掉上面widthLabel中强转常量的类型
//去掉之后 报错。操作符 + 不能够对两个不同类型的数据进行操作也就是说 + 操作符只能操作两个相同类型的数据，。
// 另外一种方式 把其他数据类型转换为字符串：把其他类型的数据写到原括号里面，然后括号左边用\分割开
let apples = 3
let oranges = 5
let appSummary = "I have \(apples) apples. "
let fruitSummary = "I have \(apples + oranges) pieces of fruit. "

// 练习  写一句问候语用上咱们上面提到的用\()把其他类型的数据转换为字符串(例：把一个浮点型的数据转化为一个字符串)
let floatValueTest = 70.0
let stringName = "Kevin"
let stringValue = "My name is " + stringName + "." + "The Tencent rock price is \(floatValueTest)"

//这里的是定义一个常/变量 用  连着开头三个引号作为开始 结束的连着三个引号作为结束  引号之间可以为多个字符串
//  也就是说三个连续双引号作为一个标识符的一部分 加上中间所要表达的内容以三个连续引号为标识符结束
let quotation = """
I said "I have \(apples) apples."And then I said "I have \(apples + oranges) pieces of fruit."

"""
// 用[] 来表示一个数组，数组的取值可以用[index]或者[key]，数组的结尾可以用，隔开


var shoppingList = ["catfish","water","tulips","bluePrint"]
shoppingList[1] = "bottle of water"
var occupations = [
    "malcolm":"Caption",
    "Kaylee":"Mechanic",
]
occupations["Jayne"] = "Public Relations"

// 用初始化的方式创建一个空的数组和空的字典
let emptyArray = [String]()// 数组里的元素是字符串类型的
let emptyDictonary = [String:Float]()// 字典中的key 为字符串 value 为float类型的值
// 如果给出的值类型能够被编译器识别，那么我们可以用下面的方式来写一个空的数组或者字典 就像我们给一个变量进行赋值或者函数调用的时候传值一样(对变量来说说白了就是赋值或者函数的调用，可以直接给值来进行调用)
shoppingList = []
occupations = [:]

// 控制语句
// 主要是讲循环的一些知识点，判断条件之间的()可以省略，但是判断循环体/条件体之间的{}不能省略

let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else {
        teamScore += 1
    }
}
print(teamScore)


// 讲的是用？来表示当前数据的值为可选的。可有可无。
var optionalString: String? = "hello"

print(optionalString == nil)


var optionalName: String? = "john appleseed"

var greeting = "hello"

if let name = optionalName {
    greeting = "hello,\(name)"
}


// 这里是用来练习关于一个值为nil的时候if的判断问题(不要忘记写else)。
var optionalString1: String? = "hello"
print(optionalString1 == nil)
var optionalName1: String? = nil
var greeting1 = "hello"
if let name1 = optionalName1 {
    greeting1 = "hello,\(name1)"
}else {
    greeting1 = "this is an error"
}
//我们可以用另外一个操作符？？来处理可选变量的值，这个其实就是给这个值一个默认值 类似于我们在写OC代码的时候判断如果为空的时候给一个默认值(三目运算符:) a?a:b
let nickName: String? = nil
let fullName:String = "john Appleseed"
let informalGreeting = "hi \(nickName ?? fullName)"

// switchcase不仅仅支持基本数据类型 NSInteger的判断也支持字符串的匹配
let vegetable = "red papper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber","watrcress":
    print("that would make a good tea sandwich")
case let x where x.hasSuffix("papper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// 练习 试着移除default case 会有什么结果？
//Switch must be exhaustive

//通过循环遍历找出对应的value最大的哪个值
let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25],
]
var largest = 0
for (_,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// 定义一个变量找出最大值所在的number(也就是说找出最大值所在字典的哪个key)
var largestTest = 0
var largestNumber = ""
for (kindTest,numbersTest) in interestingNumbers {
    for numberTest in numbersTest {
        if numberTest > largestTest {
            largestTest = numberTest
            largestNumber = kindTest
        }
    }
}
print("the largest is \(largestTest),the lastNumber is \(largestNumber).")
//如何使用while 循环 进行条件判断
var n = 2
while n < 100 {
    n *= 2
}
print("the result of n is \(n)")
var m = 2
repeat {
    m *= 2
} while m < 100
print("the result of m is \(m)")
// 使用..<  来完成一个for循环
var total = 0
for i in 0 ..< 4 {
    total += i
}
print(total)


// 函数和闭包
func greet (person:String,day:String) ->String {
    return "Hello \(person),today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

// 移除day 这个参数 添加问候的另外一个关于吃什么的参数

func greetPre (person:String,meal:String) ->String {
    return "Hello,\(person),what will you  have on  \(meal)?"
}
greetPre(person: "Kevin", meal: "Supper")

//用_来表示一个没有实参的标签 用_表示函数调用的时候可以省略这个参数
func greetAdd(_ person:String, on day:String) ->String {
    return "Hello, \(person),today is \(day)."
}
greetAdd("John", on:"Wednesday")

//  元组的使用 传入一个int 类型的数组 返回他们之前的最大值最小值以及他们的和
func calculateStatistics (scores:[Int]) -> (min: Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)

}
// 下面的statistics  就是一个元组 里面的结构是这样的(min: 3, max: 100, sum: 120)

let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

// 函数的嵌套
func returnFifteen() ->Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
//函数是第一类对象，这就是说一个函数可以将另外一个函数的返回值作为它自己的返回值
// 百度关于第一类对象的解释：第一类对象（英语：First-class object）在计算机科学中指可以在执行期创造并作为参数传递给其他函数或存入一个变量的实体。将一个实体变为第一类对象的过程叫做“物件化”（Reification）。

func makeIncrementer() -> ((Int) ->Int) {
    func addOne(number : Int) ->Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
// 函数可以调用另外一个函数的结果作为自己的参数
// condition:(Int) ->Bool)  是一个函数作为另一个函数的参数的代表 执行的时候先执行这个函数
func hasAnyMatches(list:[Int], condition:(Int) ->Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) ->Bool {
    return number < 10
}
var numbers = [20, 9, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

// 闭包的使用 闭包是延时调用的
numbers.map ({(number:Int) ->Int in
    let result = 3 * number
    print("result is \(result)")
    return result
})
//  练习闭包
numbers.map ({(number:Int) ->Int in
    if number % 2 == 0 {
        return 0
    }
    print("number is \(number)")
    return number
})
// 省略了类型判断以及返回值
let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)
//  省略掉了 ()
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

// 类与对象
// 方法和属性 定义在类中 作用域就在这个类里。
class Shape {
    var numberOfSides = 0
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides."
    }
    let letConstrant = 5
    func letConstant(parame:Int) ->String {
        return "B shape with \(letConstrant) sides."
    }
}

// 点语法进行调用
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shape.simpleDescription(),"\n",shape.letConstant(parame:5))

//给类添加一个初始化方法
class NamedShape {
    var numberOfSides:Int = 0
    var name:String
    init(name:String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// 继承(定义一个初始化方法)
class Square:NamedShape {
    
    var sideLength:Double
    init(sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length\(sideLength)."
    }
    
}
let test  = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

// 再定义一个继承自NamedShape的类Circle,在它的初始化方法中有一个半径和name的两个参数。在这个类中实现area和simpleDescription两个方法。
class Circle:NamedShape {
    
    var radius:Double
    init(radius:Double,name:String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 6
    }
    func area() -> Double {
        return Double.pi * radius * radius
    }
    override func simpleDescription() -> String {
        return "The radius of the circle is \(radius)."
    }
    
}
let testCircle = Circle(radius: 2, name: "the circle")
testCircle.area()
testCircle.simpleDescription()

// 对属性设置setter和getter方法
class EquilateralTriangle:NamedShape {
    
    var sideLength:Double = 0.0
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimter:Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilteral Triangle with sides of length\(sideLength)."
    }
}
var triangle = EquilateralTriangle (sideLength: 3.1, name: "a triangle")
print(triangle.perimter)
triangle.perimter = 9.9
print(triangle.sideLength)

// willset和didset 方法的执行（每当属性发生变化的时候就会执行）
class TriangleAndSquare {
    var  triangle:EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var  square:Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size:Double,name:String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
// 可选值(如果？前面的值为空的时候 后面的代码不再执行 返回nil，不为空 就以可选值正常执行)
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideWidth = optionalSquare?.sideLength

// 枚举使用
enum Rank:Int {
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    case jack,queen,king
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
let  ace = Rank.ace
let aceRawValue = ace.rawValue

// 练习：写一个函数从枚举`Rank`中取出两个枚举值比下他们的`rawValue`
func compareFromRang(_ a:Rank,_ b:Rank) -> String{
    if a.rawValue > b.rawValue {
        return "\(a.simpleDescription())'s rawValue is the max than \(b.simpleDescription())'s"
    }else {
        return "\(a.simpleDescription())'s rawValue is the max than \(b.simpleDescription())'s"
    }
}
compareFromRang(Rank.jack,Rank.king)
// 练习使用rawValue来访问成员变量
if  let convertedRank = Rank (rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
    
}
// 一般来说我们不对枚举的初始值进行重新定义。
enum  Suit {
    case spades,hearts,diamonds,clubs
    func simpleDescription() ->String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func colorDescription()->UIColor {
        switch self {
        case .spades,.clubs:
            return UIColor.black
        case .hearts,.diamonds:
            return UIColor.red
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
// 小练习
let heartsColorDescription = hearts.colorDescription()

enum ServerResponse {
    case result(String, String)
    case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure ... \(message)")
}
// 结构体的定义
struct Card {
    var rank:Rank
    var suit:Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// 让咱们一起声明一个协议吧
protocol ExampleProtocol {
    var simpleDescription:String{get}
    mutating func adjust()
}

// 类 枚举和结构体都能够遵守协议
class SimpleClass:ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty:Int = 69105
    func  adjust() {
        simpleDescription += " Now 100% adjusted."
    }
    
}
var a  = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
    
}
var b = SimpleStructure ()
b.adjust()
let bDescription = b.simpleDescription
//不能直接为枚举添加属性 要采用关联值来解决  例如下面的
enum SimpleEnum:Int,ExampleProtocol {
    case type,title
    var simpleDescription:String {
        switch self {
        case .type:
            return "A simple  enum  about  type"
        case .title:
            return "A simple  enum  about  title"
        }
    }
    func adjust() {
        print("this is enum")
        simpleDescription
    }
}
var c = SimpleEnum.type
c.simpleDescription
c.adjust()
//
extension Int:ExampleProtocol {
    
    var simpleDescription:String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
extension Double {
    var absoluteValue:String {
        return "The Double number is \(self)"
    }
}
print(2.0.absoluteValue)

let protocolValue:ExampleProtocol = a
print(protocolValue.simpleDescription)
// 打开注释你就会发现报错信息
//print(protocolValue.anotherProperty)
//Value of type 'ExampleProtocol' has no member 'anotherProperty'


// 错误处理
enum PrinterError:Error {
    case outOfPaper
    case noToner
    case onFire
}
// 错误处理
func send(job:Int,toPrinter printerName:String) throws-> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    } else if printerName == "Out Of Paper"
    {
        throw PrinterError.outOfPaper
    }
    else if printerName == "On fire" {
        throw PrinterError.onFire
    }
    return "Job sent"
}
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi sheng")
    print(printerResponse)
} catch  {
    print(error)
}
// 小练习
do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch  {
    print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here,with the rest of the fire")
} catch let printferError as PrinterError {
    print("Printer error:\(printferError)。")
} catch {
    print(error)
}

let printerSuccess = try?send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try?send(job: 1885, toPrinter:"Never Has Toner")
// 练习 defer 使用
var fridgeIsOpen = false
let fridgeContent = ["milk","eggs","leftovers"]
func fridgeContains(_ food:String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    let result = fridgeContent.contains(food)
    return result
    
}
fridgeContains("banana")
print(fridgeIsOpen)
//泛型
func makeArray<Item>(repeating item:Item, numberOfTimes:Int) -> [Item] {
    var result = [Item]()
    for _ in 0 ..< numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

// Reimplement the Swift standard library's optional type 实现标准库中的可选类型
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger:OptionalValue<Int> = .none
possibleInteger = .some(100)

print("\(possibleInteger)")

// 使用where添加条件
func anyCommonElements<T:Sequence,U:Sequence>(_ lhs:T,_ rhs:U)->Bool
    where T.Iterator.Element:Equatable,
    T.Iterator.Element ==
    U.Iterator.Element {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
    }
    return false
}
anyCommonElements([1,2,3], [3])

// 小练习 修改`anyCommonElements(:)`函数来创建一个函数，返回一个数组。内容是两个序列里的公共元素。
func anyCommonArrayElements<T:Sequence,U:Sequence>(_ lhs:T,_ rhs:U)->Array<Any>
    where T.Iterator.Element:Equatable,
    T.Iterator.Element ==
    U.Iterator.Element {
        var  array = Array<Any>()
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                   array.append(lhsItem)
                }
            }
        }
        return array
}
anyCommonArrayElements([1,2,3], [2,3,4,5])







