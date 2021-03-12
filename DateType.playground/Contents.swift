
// swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false // C언어처럼 true, false를 0과 1로 표현하면 오류 발생

// Int
var someInt: Int = -100

// UInt : 부호가 없는 정수, 즉 양수
var someUInte : UInt = 100

// Float
var someFloat: Float = 3.14
someFloat = 3 // 가능

// Double
var someDouble: Double = 3.14
someDouble = 3 // 가능
// someDouble = someFloat // 오류

// Character : 한 글자 문자를 표현하기 위한 타입. 유니코드 사용
var someCharacer: Character = "a"
someCharacer = "호"
//someCharacer = "하하" // 한 글자가 아니라서 오류 발생

// String
var someString: String = "하하"
someString = someString + " 스마일~"



// Any : Swift의 모든 타입을 지칭하는 키워드
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

// let someDouble: Couble = someAny // 오류 발생. 왜???



// AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
class SomeClass {}

var someAnyObject: AnyObject = SomeClass() // 클래스의 인스턴스 SomeClass()를 변수 someAnyObject에 넣기

//someAnyObject = 123.12 // 오류 발생. 클래스 타입이 아니라서.



// nil : '없을'을 나타내는 키워드 > nil이 필요한 부분은 옵셔너리에서!
// someAny = nil // 어떤 타입도 다 넣을 수 있지만, 빈 값은 넣을 수 없다.
// somenyObject = nil // 여기도 마찬가지

