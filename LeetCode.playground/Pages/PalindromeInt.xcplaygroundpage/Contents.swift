// Determine whether an integer is a palindrome.
// An integer is a palindrome when it reads the same backward as forward.

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }

    var num = x
    var reversedNum = 0

    while num > 0 {
        let digit = num % 10
        reversedNum = (reversedNum * 10) + digit
        num = num / 10
    }

    return reversedNum == x
}

assert(isPalindrome(0))
assert(isPalindrome(10) == false)
assert(isPalindrome(121))
