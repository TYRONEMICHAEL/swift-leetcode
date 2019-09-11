// Determine whether an integer is a palindrome.
// An integer is a palindrome when it reads the same backward as forward.

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }

    var num = x
    var reversedNum = 0

    while num > reversedNum {
        let digit = num % 10
        reversedNum = (reversedNum * 10) + digit
        num = num / 10
    }

    return reversedNum == num || num == reversedNum / 10
}

assert(isPalindrome(0))
assert(isPalindrome(12321))
assert(isPalindrome(10) == false)

