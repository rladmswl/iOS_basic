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



/* 함수 고급 */

//기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
        함수 구현부
        return 반환값
 }
 */

func greeting(friend: String, me: String = "eun ji") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략 가능
greeting(friend: "lee")
greeting(friend: "choi", me: "kim") // 기본값 변경됨.


// 전달인자 레이블은 함수를 호출할 때, 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
/*
 func 함수이름(전달인자 레이블 매개변수1이름: 전달인자 레이블 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
        함수 구현부
        return
 }
 */

// 함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때는 전달인자 레이블을 사용해야 함.
greeting(to: "park", from: "kim eunji")


// 가변 매개변수는 함수당 하나만 가질 수 있고, 전달 받을 값의 개수를 알기 어려울 때 사용함.
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
        함수 구현부
        return
 }
 */

func sayHelloToFriends(me: String, friends: String...) -> String { // friends가 몇명이든 상관없다. 대신 전달인자가 없거나, nil을 넣어주면 오류 발생.
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "eun ji", friends: "lee", "park", "iOS"))

print(sayHelloToFriends(me: "kim eun ji")) // 가변인자에 아무것도 넣고싶지 않으면 전달인자 레이블을 생략해야함.



/* 함수의 타입 표현 */
// 반환타입 생략 가능
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:) // String타입이 두개면서 반환값이 없는 함수를 만들고, greeting 함수를 변수 somefunction에 넣어줌.
someFunction("yhang", "kim")

someFunction = greeting(to:from:)
someFunction("chang", "kim")

//someFunction = sayHelloToFriends(me: friends:) // 타입이 다른 함수는 할당 못함. sayHellowToFriends는 가변 매개변수를 갖기 때문.


func runAnother(function: (String, String) -> Void) {
    function("min", "jeong")
}

runAnother(function: greeting(friend: me:)) // 함수를 직접 넘겨줌.

runAnother(function: someFunction) // 변수에 담겨있는 함수를 넘겨줌

