const { subtractNumber } = require("../index")

describe("Test for adding two numbers", () => {
    test("should add two numbers", () => {
        expect(subtractNumber(4, 7)).toBe(-3)
    })
})