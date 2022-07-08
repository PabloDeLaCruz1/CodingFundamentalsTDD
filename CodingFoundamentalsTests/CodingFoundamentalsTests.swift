//
//  CodingFundamentalsTests.swift
//  CodingFundamentalsTests
//
//  Created by Pablo De La Cruz on 7/7/22.
//

import XCTest
@testable import CodingFundamentals

class CodingFundamentalsTests: XCTestCase {

    func testAdd() {
        let result = Fundamentals().addNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 3)
    }

    func testSub() {
        let result = Fundamentals().subNumbers(x: 1, y: 2)
        XCTAssertEqual(result, -1)
    }

    func testMult() {
        let result = Fundamentals().multNumbers(x: 3, y: 2)
        XCTAssertEqual(result, 6)
    }

    func testPalindrome() {
        XCTAssertTrue(Fundamentals().isPalindrome(word: "lool"))
        XCTAssertTrue(Fundamentals().isPalindrome(word: "anna"))
        XCTAssertFalse(Fundamentals().isPalindrome(word: "Revature"))
        XCTAssertTrue(Fundamentals().isPalindrome(word: "11gg22gg11"))
    }

    func testCharCounter() {
        XCTAssertEqual(Fundamentals().charCounter(char: "p", string: "Apple"), 2)
        XCTAssertEqual(Fundamentals().charCounter(char: "l", string: "Hello World"), 3)
        XCTAssertEqual(Fundamentals().charCounter(char: "h", string: "dasdsjbdahsdvi;vldb-dsashdhbalcvljhseb2387hyfgg23buhbsd"), 6)
    }

    func testMatchingItemInArray() {
        XCTAssertEqual(Fundamentals().matchItemsInArray(item: "hello", arr: ["world", "hello", "2", "yes", "hello"]), ["hello", "hello"])

    }

    func testSquareSum() {
        XCTAssertEqual(Fundamentals().squareSum([]), 0)
        XCTAssertEqual(Fundamentals().squareSum([1]), 1)
        XCTAssertEqual(Fundamentals().squareSum([1, 2]), 5)
        XCTAssertEqual(Fundamentals().squareSum([3, 4]), 25)
        XCTAssertEqual(Fundamentals().squareSum([-3, -4]), 25)
        XCTAssertEqual(Fundamentals().squareSum([1, 2, 3]), 14)
        XCTAssertEqual(Fundamentals().squareSum([5, 3, 4]), 50)
        XCTAssertEqual(Fundamentals().squareSum([-3, -4, 0]), 25)

    }

    func testSwitchItUp() {
        XCTAssertEqual(Fundamentals().switchItUp(1), "One")
        XCTAssertEqual(Fundamentals().switchItUp(3), "Three")
        XCTAssertEqual(Fundamentals().switchItUp(5), "Five")
    }

    func testHero() {
        //Hero Wins
        XCTAssertTrue(Fundamentals().hero(bullets: 4, dragons: 2))
        //Hero Loses
        XCTAssertFalse(Fundamentals().hero(bullets: 4, dragons: 3))
    }
    func testBubbleSort() {
        //Repeating Digits
        XCTAssertEqual(Fundamentals().bubbleSort([1, 1, 1, 1]), [1, 1, 1, 1])

        // 1 Digit
        XCTAssertEqual(Fundamentals().bubbleSort([1]), [1])

        // 6 Digits
        XCTAssertEqual(Fundamentals().bubbleSort([1, 3, 6, 2, 4, 5]), [1, 2, 3, 4, 5, 6])

        // Reversing
        XCTAssertEqual(Fundamentals().bubbleSort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5])

        // Larger Number
        XCTAssertEqual(Fundamentals().bubbleSort([50, 20, 15, 999, 111]), [15, 20, 50, 111, 999])
    }

    func testFibonacci() {
        XCTAssertEqual(Fundamentals().fibonacci(n: 0), 0)
        XCTAssertEqual(Fundamentals().fibonacci(n: 5), 5)
        XCTAssertEqual(Fundamentals().fibonacci(n: 10), 55)
        XCTAssertEqual(Fundamentals().fibonacci(n: 20), 6765)
    }

    func testFactorial () {
        XCTAssertEqual(Fundamentals().factorial(n: 0), 1)
        XCTAssertEqual(Fundamentals().factorial(n: 5), 120)
        XCTAssertEqual(Fundamentals().factorial(n: 10), 3628800)
        XCTAssertEqual(Fundamentals().factorial(n: 20), 2432902008176640000)

    }

    func testSecondLargest () {
        XCTAssertEqual(Fundamentals().secondLargest(arr: [0, 2, 4, 12, 52]), 12)
        XCTAssertEqual(Fundamentals().secondLargest(arr: [10, 222, 134, 12, 52]), 134)
        XCTAssertEqual(Fundamentals().secondLargest(arr: [0, 1]), 0)
    }

    func testIsPrime () {
        XCTAssertTrue(Fundamentals().isPrime(2))
        XCTAssertTrue(Fundamentals().isPrime(3))
        XCTAssertTrue(Fundamentals().isPrime(11))
        XCTAssertFalse(Fundamentals().isPrime(4))
        XCTAssertFalse(Fundamentals().isPrime(120))
    }

    func testFlattenAndSort() {
        XCTAssertEqual(Fundamentals().flattenAndSort([[Int]]()), [])
        XCTAssertEqual(Fundamentals().flattenAndSort([[Int](), []]), [])
        XCTAssertEqual(Fundamentals().flattenAndSort([[], [1]]), [1])
        XCTAssertEqual(Fundamentals().flattenAndSort([[], [], [], [2], [], [1]]), [1, 2])
        XCTAssertEqual(Fundamentals().flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
        XCTAssertEqual(Fundamentals().flattenAndSort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
        XCTAssertEqual(Fundamentals().flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]), [111, 222, 333, 444, 555, 666, 777, 888, 999])
    }

    func testEncryptThis() {
        XCTAssertEqual(Fundamentals().encryptThis(text: "A wise old owl lived in an oak"), "65 119esi 111dl 111lw 108dvei 105n 97n 111ka")
        XCTAssertEqual(Fundamentals().encryptThis(text: "The more he saw the less he spoke"), "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp")
        XCTAssertEqual(Fundamentals().encryptThis(text: "The less he spoke the more he heard"), "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare")
        XCTAssertEqual(Fundamentals().encryptThis(text: "Why can we not all be like that wise old bird"), "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri")
        XCTAssertEqual(Fundamentals().encryptThis(text: "Thank you Piotr for all your help"), "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple")
    }
    func testDigits() {
        XCTAssertEqual(Fundamentals().digits(5), 1)
        XCTAssertEqual(Fundamentals().digits(12345), 5)
        XCTAssertEqual(Fundamentals().digits(9876543210), 10)
    }
    
    func testMyStack() {
        var aStack = Fundamentals.myStack<Int>()
        
        aStack.push(1)
        XCTAssertEqual(aStack.pop(), 1)
        aStack.push(23)
        XCTAssertEqual(aStack.pop(), 23)
        aStack.push(121)
        XCTAssertEqual(aStack.pop(), 121)
    }
    
    func testMyQueue() {
        var queue = Fundamentals.myQueue<String>()
        queue.enqueue("Mark")
        XCTAssertEqual(queue.dequeue() , "Mark")

        queue.enqueue("Steve")
        XCTAssertEqual(queue.dequeue() , "Steve")
        
        queue.enqueue("Kim")
        XCTAssertEqual(queue.dequeue(), "Kim")
       
        XCTAssertNil(queue.dequeue())
    }

    func testBinarySearch() {
        let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

      XCTAssertEqual(Fundamentals().binarySearch(numbers, 43, 0 ..< numbers.count), 13)
    }
}
