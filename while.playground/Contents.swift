
/* 반복문 */

import Swift

var integers = [1,2,3]
let people = ["eunji": 10, "lee": 5, "choi": 32]


// for-in
/*
 for item in items {
    code
 }
 */

for integer in integers {
    print(integer)
}

//딕셔너리의 item은 key와 value로 구성된 튜플 타입
for (name, age) in people {
    print("\(name): \(age)")
}


// while
/*
 while condition {
    code
 }
 */

while integers.count > 1 { // 조건 부분에는 반드시 bool값이 들어와야 한다.
    integers.removeLast()
}


// repeat-while -> 타 언어의 do-while과 같음. swift는 do를 오류처리함.
/*
 repeat {
    code
 } while condition
 */

repeat {
    integers.removeLast() // repeat 구문이 먼저 실행되고,
} while integers.count > 0 // while에서 조건 확인 후 반복 실행.


