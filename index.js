const addNumber = (a, b) => {

    return a + b
}

console.log("The sum of 5 and 9 is " + addNumber(5, 7))

const subtractNumber = (a, b) => {

    return a - b
}

console.log("The difference of 1 and 13 is " + subtractNumber(1, 13))

module.exports = {
    addNumber, subtractNumber
}