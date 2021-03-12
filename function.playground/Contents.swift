/* 함수 기초 */

// 함수 선언의 기본 형태
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
        함수 구현부
        return 반환값
 }
 */

func sum(a: Int, b: Int) -> Int {
    return a+b
}


// 반환 값이 없는 함수
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
        함수 구현부
        return
 }
 */

func printMyName(name: String) -> Void { // void는 '없다'라는 타입 별칭
    print(name)
}

func printYourName(name: String) { // void 생략 가능
    print(name)
}


// 매개변수가 없는 함수
/*
 func 함수이름() -> 반환타입 {
        함수 구현부
        return 반환값
 }
 */

func maximumIntegerValue() -> Int {
    return Int.max
}


// 매개변수와 반환값이 없는 함수
/*
 func 함수이름() -> Void {
    함수 구현부
    return
 }
 */

func hello() -> Void {
    print("hi nice to meet you")
}

func bye() { // void 생략 가능
    print("good bye")
}


// 위에서 만든 함수 호출
sum(a: 3, b: 7)
printMyName(name: "eun ji")
printYourName(name: "iOS")
maximumIntegerValue() // Int의 최댓값
hello()
bye()



