/*
 ** 날짜 : 2017.10.21 (토)
 ** 이름 : 여정승
 ** stack
 ** 참고 서적 : 빅 너드 렌치의 스위프트 프로그래밍, 스위프트 테이터 구조와 알고리즘
 */

import UIKit

public struct Stack<T> {
    
    private var elements = [T]()
    
    // 스택의 맨 위의 값을 반환
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    // 스택의 맨 위 데이터 삽입
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    // 스택의 맨 위의 값을 삭제 하지 않고 출력
    public func peek() -> T? {
        return self.elements.last
    }
    
    // 스택의 값이 있는지 없는 체크 true : 값이 없음, false 값이 있음
    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }
    
    // 스택의 크기를 반환
    public var count: Int {
        return self.elements.count
    }
    
    // 스택의 모든 값 pop
    public mutating func Allpop() {
        for _ in self.elements {
            print(pop()!)
        }
    }
}
