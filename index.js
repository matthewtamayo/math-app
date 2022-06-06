const addNumber = (a, b) => {

    return a + b
}

console.log("The sum of 7 and 4 is " + addNumber(7, 4))

const subtractNumber = (a, b) => {

    return a - b
}

console.log("The different of 4 and 7 is " + subtractNumber(4, 7))

module.exports = {
    addNumber, subtractNumber
}