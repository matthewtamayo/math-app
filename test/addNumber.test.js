const { addNumber } = require("../index")

describe("Test for adding two numbers", () => {
    test("should add two numbers", () => {
        expect(addNumber(7, 4)).toBe(11)
    })
})