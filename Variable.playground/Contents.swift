
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
