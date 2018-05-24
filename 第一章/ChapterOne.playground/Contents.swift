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
class nameShape {
    var numberOfSides:Int = 0
    var name:String
    init(name:String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}



