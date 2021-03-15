
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
