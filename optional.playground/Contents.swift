
/* 옵셔널 */
// 옵셔널 : 값이 있을 수도 있고, 없을 수도 있다.
// nil의 값을 명시적으로 표현해준다.


// someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) { // 옵셔널인 Int타입
    // ...
}

// someParam must not be nil
func someFunction(someParam: Int) { // 옵셔널이 아닌 Int타입
    // ...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil) // 오류 발생



// 옵셔널은 열거형과 general의 합잡
/*
enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}

let optionalValue : Optional<Int> = nil
let optionalValue : Int? = nil
*/


// 암시적 추출 옵셔널 -> !를 사용한다

var optionalValue1: Int! = 100

switch optionalValue1 { // 옵셔널은 열거형 이니까 case구문으로 작성
case .none: // 값이 없으면
    print("this Optional variable is nil")
case .some(let value): // 값이 있으면
    print("value is \(value)")
}

// 기존 변수처럼 사용 가능
optionalValue1 = optionalValue1 + 1

// nil 할당 가능
optionalValue1 = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//optionalValue1 = optionalValue1 + 1




// 일반적인 옵셔널 -> ?를 사용한다

var optionalValue2: Int? = 100 // Int값이 있을 수도 있고, 없을 수도 있다는 변수

switch optionalValue2 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue2 = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValue2 = optionalValue2 + 1



/* 옵셔널 추출 */
/*optional Binding : 옵셔널의 값을 꺼내오는 방법 중 하나. nil 체크 + 안전한 값 추출 */

// 옵셔널은 다른 string타입과 다른 취급
/*
func printName(_ name: Stirng) { // printName이라는 함수에서 옵셔널 타입이 아닌 String을 전달 받도록 함.
    print(name)
}

var myName: String? = nil // 하지만 함수 외부에서는 옵셔널 타입을 사용.

printName(myName) // 따라서 오류 발생
*/


// if - let

func printName(_ name: String) {
    print(name)
}

var myname: String! = nil // 암시적 호출 옵셔널

if let name: String = myname { // if-let으로 값 꺼내올 수 있음
    printName(name) // if-let구문 안에서만 사용 가능
} else {
    print("myName == nil")
}

//printName(name) // name 상수는 if-let 구문 내에서만 사용가능한데, 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생


var myName: String? = "eunji"
var yourName: String? = nil

if let name = myName, let friend = yourName { // myName이랑 yourName 모두 값이 들어있어야 실행됨.
    print("\(name) and \(friend)") // yourName이 nil이여서 실행 안됨
}

yourName = "lee"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)") // yourName이 lee로 바뀌어서 실행됨
}



/* Force Unwrapping : 옵셔널의 값을 강제로 추출 */

func printName2(_ name: String) {
    print(name)
}

var myName2: String? = "kim eunji"
printName2(myName2!) // !에 의해 String?의 ?가 벗겨지고, 그 안에 있던 값이 넘어온다. 그래서 옵셔널이 아닌 String타입으로 받아올 수 있다.
// !은 안의 값을 강제로 추출

myName2 = nil
//print(myName2!) // 강제 추출시 값이 nil로 없으므로 런타임 오류 발생

var yourName2: String! = nil // 암시적 옵셔널
//printName2(yourName2) // !가 없어도 전달 가능. 자동으로 !를 붙여준 것과 같은 효과를 준다. 현재 nil값이 전달되어 오류 발생

