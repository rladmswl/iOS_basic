
var radius = 3.123 // 변수 var
let pi = 3.141592 // 상수 let
radius * radius * pi

//변수는 변할 수 있는 수
//상수는 초기화 한 이후에 값을 바꾸게 되면 에러가 남


func circleArea(r: Double) -> Double {
    return r * r * 3.141592
}

circleArea(r: 3.123)
circleArea(r: 5.456)
circleArea(r: 8.97)


class Circle {
    var radius = 3.123
    let pi = 3.141592
    
    func circleArea(r: Double) -> Double {
        return r * r * 3.141592
    }
}


// 상수의 선언
// let 이름: 타임 = 값

// 변수의 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "변경 불가능한 상수 let"
var variable: String = "변경 가능한 변수 var"

variable = "변수 변경 가능"
//constant = "변경하기" // 오류 발생


// 상수 선언 후 나중에 값 할당 > 타입을 꼭 명시 해줘야 함!
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB

// sum = 1 // 상수니까 재변경 불가능. 오류 발생


// 변수도 나중에 할당하는거 가능함
var name: String

name = "eunji"

name = "Kim eun ji" // 변수니까 재변경 가능
