
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


