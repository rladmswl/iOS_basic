
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



// Array : 순서가 있는 리스트 컬렉션
var integers: Array<Int> = Array<Int>() // 빈 Int Array 생성
integers.append(1) // 추가
integers.append(100)
//integers.append(101.1) // 정수가 아니여서 오류
integers.append(33)

integers.contains(100) // 100이 리스트에 있나?
integers.contains(99) // 99가 리스트에 있나?

integers.remove(at: 0) // 인덱스[0]에 있는 것을 삭제
integers.removeLast() // 맨 마지막 요소 삭제
//integers.removeAll() // 전체 삭제

integers.count // 리스트에 있는 개수

integers[0]

// Array<Double>와 [Double]는 동일한 표한
var doubles: Array<Double> = [Double]() // 빈 Double Array 생성
var strings: [String] = [String]() // 빈 String Array 생성
var characters: [Character] = [] // 빈 Character Array 생성, []는 새로운 빈 Array

let immutableArray = [1,2,3] // let을 사용하여 Array를 선언하면 불변 Array

//immutableArray.append(4) // let은 변경 불가능이라 오류
//immutableArray.removeAll() // 마찬가지로 오류



// Dictionary : 키와 값의 쌍으로 이루어진 컬렉션
var anyDictionary: Dictionary<String, Any> = [String: Any]() // Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "eunji", "age": "24"]

//emptyDictionary["key"] = "value" // 오류. let으로 선언을 해줘서 변경 불가

//let someValue: String = initalizedDictionary["name"] // 오류. 왜??? > 딕셔너리의 키에 해당하는 값이 있을 수도 있고, 없을 수도 있는 불확실성 때문. ????????



// Set : 순서가 없고, 멤버가 유일한 컬렉션
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1) // insert로 요소 추가
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99) // 중복된 값은 추가 안함. 한번만 추가
integerSet.insert(22)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()
//integerSet.removeLast() // 마지막 제거 왜 안됨??

integerSet.count

// set 응용
let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) // A와 B의 합집합

let sortedUnion: [Int] = union.sorted() // 합집합 union을 정렬 (배열)

let intersection: Set<Int> = setA.intersection(setB) // 교집합

let subtracting: Set<Int> = setA.subtracting(setB) // 차집합


