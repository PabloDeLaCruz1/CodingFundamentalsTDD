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

        //1 Digit
        XCTAssertEqual(Fundamentals().bubbleSort([1]), [1])

        // 6Digits
        XCTAssertEqual(Fundamentals().bubbleSort([1, 3, 6, 2, 4, 5]), [1, 2, 3, 4, 5, 6])

        // Reversing
        XCTAssertEqual(Fundamentals().bubbleSort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5])

        // Larger Number
        XCTAssertEqual(Fundamentals().bubbleSort([50, 20, 15, 999, 111]), [15, 20, 50, 111, 999])
    }

}
