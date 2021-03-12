
/* 조건문 */


import Swift

let someInteger = 90

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}


// 범위 연산자
switch someInteger {
case 0:
    print("zero")
case 1..<100: // 1 이상 100 미만
    print("1~99")
case 101...Int.max: // 101 이상
    print("over 100")
default:
    print("unknown")
}

// 정수 외의 대부분의 기본 타입을 사용할 수 있다.
switch "eunji" {
case "lee":
    print("lee")
case "choi": // 1 이상 100 미만
    print("choi")
case "eunji": // 101 이상
    print("eunji~")
default:
    print("unknown")
}
