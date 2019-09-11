// Given a 32-bit signed integer, reverse digits of an integer.

func reverse(_ x: Int) -> Int {
    let isNegative = x < 0
    var number = abs(x)
    var reversedNumber = 0

    while number > 0 {
        let digit = number % 10
        reversedNumber = (reversedNumber * 10) + digit
        number = number / 10
    }

    let result = isNegative ? -reversedNumber : reversedNumber

    if (result < 0 && Int(Int32.min) > result ) { return 0 }
    if (result > 0 && Int(Int32.max) < result ) { return 0 }

    return result
}

assert(321 == reverse(123))
assert(-321 == reverse(-123))
assert(0 == reverse(1534236469))
