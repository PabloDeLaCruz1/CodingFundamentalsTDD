import Foundation

class Fundamentals {

    // #1 Create a function that adds two numbers and returns that value
    func addNumbers(x: Int, y: Int) -> Int {
        //Your code here

        return 0
    }

    // #2 Create a function that subtracts two numbers and returns that value
    func subNumbers(x: Int, y: Int) -> Int {
        //Your code here

        return 0
    }

    // #3 Create a function that multiplies two numbers and returns that value
    func multNumbers(x: Int, y: Int) -> Int {
        //Your code here

        return 0
    }

    // #4 Create a function that checks if a String is a Palindrome
    // A palindrome is a word, number, phrase or other sequence that reads the same forward as it reads backward.
    func isPalindrome(word: String) -> Bool {
        //Your code here

        return false
    }

    // #5 Find the number of occurrences of a character in a String?
    func charCounter(char: Character, string: String) -> Int {
        //Your code here

        return 0
    }

    // #6 Find a matching Item in an Array
    func matchItemsInArray(item: String, arr: [String]) -> [String] {
        //Your code here

        return [""]
    }

    // #7 Complete the square sum function so that it squares each number passed into it and then sums the results together.
    func squareSum(_ vals: [Int]) -> Int {
        //Your code here

        return 0
    }

    // #8 When provided with a number between 0-9, return it in words.
    func switchItUp(_ number: Int) -> String {
        //Your code here

        return ""
    }

    // #9 A hero is going to fight a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive? Return True if yes, False otherwise :)
    func hero(bullets: Int, dragons: Int) -> Bool {
        //Your code here

        return false
    }

    // #10 Implement Bubble Sort
    // Bubble Sort is a sorting algorithm where the largest items bubble up one at a time
    func bubbleSort(_ arr: [Int]) -> [Int] {
        //Your code here

        return []
    }

    // #11 Fibonacci series using recursion
    //The Fibonacci numbers are the numbers in the following integer sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..
    //Given a number, print the corresponding integer in the series.
    func fibonacci(n: Int) -> Int {
        //Your code here

        return 0
    }

    // #12  Find the factorial of an integer
    // A factorial is a function that multiplies a number by every number below it. For example, 5! = 5*4*3*2*1=120. "!" is the factorio symbol.
    func factorial(n: Int) -> Int {
        //Your code here

        return 0
    }

    // #13 Find the second largest number in an array
    func secondLargest(arr: [Int]) -> Int {
        //Your code here

        return 0
    }

    // #14 Check if the given number is prime
    func isPrime(_ n: Int) -> Bool {
        //Your code here

        return false
    }

    // #15 Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

    func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
        //Your code here

        return []
    }

    // #16 You need to encrypt each word in the message using the following rules:
    //  1. The first letter must be converted to its ASCII code.
    //  2. The second letter must be switched with the last letter
    func encryptThis(text: String) -> String {
        //Your code here

        return ""
    }

    // #17 Determine the total number of digits in the integer
    func digits(_ n: Int) -> Int {
        //Your code here

        return 0
    }

    // #18 Implement a basic Stack Data Structure for Ints
    struct myStack<Int> {
        var array = [Int]()

        mutating func push(_ n: Int) {
            //your code here

        }

        mutating func pop() -> Int? {
            //your code here

            return (0 as! Int)
        }

    }
    // #19 Implement a basic Queue Data Structure for all types

    struct myQueue<T> {
        var array = [T]()
        var count: Int {
            return array.count
        }
        var isEmpty: Bool {
            return array.isEmpty
        }

        public mutating func enqueue(_ element: T) {
            //your code here

        }

        public mutating func dequeue() -> T? {
            //your code here

            return ("" as! T)
        }
    }

    // #20 Implement a Binary Search algorithm for Ints
    func binarySearch(_ numbers: [Int], _ key: Int, _ range: Range<Int>) -> Int {
        //your code here

        return 0
    }
    
}
